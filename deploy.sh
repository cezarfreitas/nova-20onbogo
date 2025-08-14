#!/bin/bash

# Onbongo B2B Deployment Script
# This script builds and deploys the Onbongo B2B application

set -e  # Exit on any error

echo "🚀 Starting Onbongo B2B Deployment..."

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Configuration
IMAGE_NAME="onbongo-b2b"
CONTAINER_NAME="onbongo-app"
NETWORK_NAME="onbongo-network"
PORT="3000"

# Check if Docker is running
if ! docker info > /dev/null 2>&1; then
    echo -e "${RED}❌ Docker is not running. Please start Docker and try again.${NC}"
    exit 1
fi

echo -e "${BLUE}📦 Building Docker image...${NC}"

# Try multiple build strategies
BUILD_SUCCESS=false

# Strategy 1: Main Dockerfile
echo -e "${BLUE}🔄 Trying main Dockerfile...${NC}"
if docker build -t $IMAGE_NAME:latest .; then
    echo -e "${GREEN}✅ Main Dockerfile build successful!${NC}"
    BUILD_SUCCESS=true
else
    echo -e "${YELLOW}⚠��  Main Dockerfile failed${NC}"

    # Strategy 2: Fixed Dockerfile (regenerates package-lock.json)
    echo -e "${BLUE}🔄 Trying fixed Dockerfile (regenerates lock file)...${NC}"
    if docker build -f Dockerfile.fixed -t $IMAGE_NAME:latest .; then
        echo -e "${GREEN}✅ Fixed Dockerfile build successful!${NC}"
        BUILD_SUCCESS=true
    else
        echo -e "${YELLOW}⚠️  Fixed Dockerfile failed${NC}"

        # Strategy 3: Simple Dockerfile
        echo -e "${BLUE}🔄 Trying simplified Dockerfile...${NC}"
        if docker build -f Dockerfile.simple -t $IMAGE_NAME:latest .; then
            echo -e "${GREEN}✅ Simplified Dockerfile build successful!${NC}"
            BUILD_SUCCESS=true
        else
            echo -e "${RED}❌ All build strategies failed!${NC}"
        fi
    fi
fi

if [[ $BUILD_SUCCESS != true ]]; then
    echo -e "${RED}❌ All build methods failed. Please check your dependencies and try again.${NC}"
    echo -e "${YELLOW}💡 Common issues:${NC}"
    echo -e "${YELLOW}   - Node version incompatibility (try Node 20+)${NC}"
    echo -e "${YELLOW}   - package-lock.json out of sync (run 'npm install')${NC}"
    echo -e "${YELLOW}   - Missing dependencies${NC}"
    exit 1
fi

echo -e "${BLUE}🔍 Checking if container is running...${NC}"
if docker ps -q -f name=$CONTAINER_NAME | grep -q .; then
    echo -e "${YELLOW}⚠️  Stopping existing container...${NC}"
    docker stop $CONTAINER_NAME
    docker rm $CONTAINER_NAME
fi

echo -e "${BLUE}🌐 Creating Docker network (if not exists)...${NC}"
docker network ls | grep $NETWORK_NAME > /dev/null || docker network create $NETWORK_NAME

echo -e "${BLUE}🚀 Starting new container...${NC}"
docker run -d \
    --name $CONTAINER_NAME \
    --network $NETWORK_NAME \
    -p $PORT:3000 \
    -e NODE_ENV=production \
    -e PORT=3000 \
    -e HOST=0.0.0.0 \
    --restart unless-stopped \
    $IMAGE_NAME:latest

echo -e "${BLUE}⏳ Waiting for application to start...${NC}"
sleep 5

# Health check
echo -e "${BLUE}🔍 Performing health check...${NC}"
if curl -f http://localhost:$PORT > /dev/null 2>&1; then
    echo -e "${GREEN}✅ Deployment successful! Application is running on port $PORT${NC}"
    echo -e "${GREEN}🌐 Access your application at: http://localhost:$PORT${NC}"
else
    echo -e "${RED}❌ Health check failed. Check container logs:${NC}"
    echo -e "${YELLOW}docker logs $CONTAINER_NAME${NC}"
    exit 1
fi

echo -e "${BLUE}📊 Container status:${NC}"
docker ps -f name=$CONTAINER_NAME

echo -e "${GREEN}🎉 Deployment completed successfully!${NC}"
echo -e "${BLUE}💡 Useful commands:${NC}"
echo -e "  View logs: ${YELLOW}docker logs -f $CONTAINER_NAME${NC}"
echo -e "  Stop app:  ${YELLOW}docker stop $CONTAINER_NAME${NC}"
echo -e "  Start app: ${YELLOW}docker start $CONTAINER_NAME${NC}"
echo -e "  Shell access: ${YELLOW}docker exec -it $CONTAINER_NAME sh${NC}"
