# Multi-stage build for optimal size and performance
FROM node:20-alpine AS builder

# Set working directory
WORKDIR /app

# Copy package files first for better caching
COPY package*.json ./

# Install ALL dependencies (including devDependencies for build)
RUN npm ci && npm cache clean --force

# Copy source code
COPY . .

# Build the application
RUN npm run build

# Production stage
FROM node:20-alpine AS production

# Install security updates and required tools
RUN apk update && apk upgrade && apk add --no-cache dumb-init curl

# Create app user for security
RUN addgroup -g 1001 -S nodejs && adduser -S svelte -u 1001

# Set working directory
WORKDIR /app

# Copy package files
COPY package*.json ./

# Install production dependencies only (exclude devDependencies)
RUN npm ci --omit=dev --no-audit --no-fund && npm cache clean --force

# Copy built application from builder stage
COPY --from=builder --chown=svelte:nodejs /app/build ./build
COPY --from=builder --chown=svelte:nodejs /app/package.json ./
COPY --from=builder --chown=svelte:nodejs /app/start.js ./

# Copy static files if they exist
COPY --from=builder --chown=svelte:nodejs /app/static ./static

# Set environment variables
ENV NODE_ENV=production
ENV PORT=80
ENV HOST=0.0.0.0

# Switch to non-root user
USER svelte

# Expose port
EXPOSE 80

# Health check
HEALTHCHECK --interval=30s --timeout=3s --start-period=5s --retries=3 \
  CMD curl -f http://localhost:80/ || exit 1

# Start the application with dumb-init for proper signal handling
ENTRYPOINT ["dumb-init", "--"]
CMD ["node", "start.js"]
