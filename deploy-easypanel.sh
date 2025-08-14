#!/bin/bash

# Deploy script específico para EasyPanel

set -e

echo "🚀 Starting EasyPanel deployment for Onbongo B2B..."

# Colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

IMAGE_NAME="onbongo-easypanel"
CONTAINER_NAME="onbongo-easypanel"

# Check if Docker is running
if ! docker info > /dev/null 2>&1; then
    echo -e "${RED}❌ Docker is not running. Please start Docker and try again.${NC}"
    exit 1
fi

echo -e "${YELLOW}📦 Building image for EasyPanel...${NC}"

# Remove existing container if it exists
if docker ps -q -f name=$CONTAINER_NAME | grep -q .; then
    echo -e "${YELLOW}⚠️  Stopping existing container...${NC}"
    docker stop $CONTAINER_NAME
    docker rm $CONTAINER_NAME
fi

# Remove existing image
if docker images -q $IMAGE_NAME:latest | grep -q .; then
    echo -e "${YELLOW}🗑️  Removing existing image...${NC}"
    docker rmi $IMAGE_NAME:latest
fi

# Build with EasyPanel Dockerfile
echo -e "${YELLOW}🔨 Building with EasyPanel optimized Dockerfile...${NC}"
if docker build -f Dockerfile.easypanel -t $IMAGE_NAME:latest .; then
    echo -e "${GREEN}✅ EasyPanel build successful!${NC}"
else
    echo -e "${RED}❌ Build failed!${NC}"
    exit 1
fi

# Test the container locally
echo -e "${YELLOW}🧪 Testing container locally...${NC}"
docker run -d \
    --name $CONTAINER_NAME \
    -p 80:80 \
    -e NODE_ENV=production \
    -e PORT=80 \
    -e HOST=0.0.0.0 \
    $IMAGE_NAME:latest

# Wait for container to start
echo -e "${YELLOW}⏳ Waiting for application to start...${NC}"
sleep 10

# Health check
if curl -f http://localhost:80 > /dev/null 2>&1; then
    echo -e "${GREEN}✅ Local test successful!${NC}"
    echo -e "${GREEN}🎯 Container is ready for EasyPanel deployment${NC}"
    
    # Show container info
    echo -e "${YELLOW}📊 Container status:${NC}"
    docker ps -f name=$CONTAINER_NAME
    
    echo -e "${GREEN}🚀 To deploy to EasyPanel:${NC}"
    echo -e "${YELLOW}1. Use Dockerfile.easypanel as your build file${NC}"
    echo -e "${YELLOW}2. Set port to 80${NC}"
    echo -e "${YELLOW}3. Environment variables: NODE_ENV=production, PORT=80, HOST=0.0.0.0${NC}"
    
else
    echo -e "${RED}❌ Local test failed. Check logs:${NC}"
    docker logs $CONTAINER_NAME
    exit 1
fi

# Cleanup
echo -e "${YELLOW}🧹 Cleaning up test container...${NC}"
docker stop $CONTAINER_NAME
docker rm $CONTAINER_NAME

echo -e "${GREEN}🎉 EasyPanel deployment preparation completed!${NC}"
