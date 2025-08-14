#!/bin/bash

# Test build script for Onbongo B2B
# Tests different Docker build strategies

set -e

echo "🔧 Testing Docker build strategies..."

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

IMAGE_NAME="onbongo-b2b-test"

# Clean up function
cleanup() {
    echo -e "${BLUE}🧹 Cleaning up test images...${NC}"
    docker rmi $IMAGE_NAME:main 2>/dev/null || true
    docker rmi $IMAGE_NAME:simple 2>/dev/null || true
}

# Trap cleanup on exit
trap cleanup EXIT

echo -e "${BLUE}📋 Node.js and npm version check:${NC}"
node --version
npm --version

echo -e "${BLUE}🔍 Checking package.json...${NC}"
if [[ ! -f "package.json" ]]; then
    echo -e "${RED}❌ package.json not found!${NC}"
    exit 1
fi

echo -e "${BLUE}📦 Method 1: Main Dockerfile...${NC}"
if docker build -t $IMAGE_NAME:main .; then
    echo -e "${GREEN}✅ Main Dockerfile build successful!${NC}"
    MAIN_SUCCESS=true
else
    echo -e "${RED}❌ Main Dockerfile build failed${NC}"
    MAIN_SUCCESS=false
fi

echo -e "${BLUE}📦 Method 2: Simplified Dockerfile...${NC}"
if docker build -f Dockerfile.simple -t $IMAGE_NAME:simple .; then
    echo -e "${GREEN}✅ Simplified Dockerfile build successful!${NC}"
    SIMPLE_SUCCESS=true
else
    echo -e "${RED}❌ Simplified Dockerfile build failed${NC}"
    SIMPLE_SUCCESS=false
fi

echo -e "${BLUE}📊 Build Results:${NC}"
if [[ $MAIN_SUCCESS == true ]]; then
    echo -e "${GREEN}  ✅ Main Dockerfile: SUCCESS${NC}"
    MAIN_SIZE=$(docker images $IMAGE_NAME:main --format "table {{.Size}}" | tail -n 1)
    echo -e "${BLUE}     Size: $MAIN_SIZE${NC}"
else
    echo -e "${RED}  ❌ Main Dockerfile: FAILED${NC}"
fi

if [[ $SIMPLE_SUCCESS == true ]]; then
    echo -e "${GREEN}  ✅ Simplified Dockerfile: SUCCESS${NC}"
    SIMPLE_SIZE=$(docker images $IMAGE_NAME:simple --format "table {{.Size}}" | tail -n 1)
    echo -e "${BLUE}     Size: $SIMPLE_SIZE${NC}"
else
    echo -e "${RED}  ❌ Simplified Dockerfile: FAILED${NC}"
fi

# Test the successful build
if [[ $MAIN_SUCCESS == true ]]; then
    echo -e "${BLUE}🧪 Testing main build...${NC}"
    if docker run --rm -d --name test-main -p 3001:3000 $IMAGE_NAME:main; then
        sleep 5
        if curl -f http://localhost:3001 >/dev/null 2>&1; then
            echo -e "${GREEN}✅ Main build runtime test: SUCCESS${NC}"
        else
            echo -e "${RED}❌ Main build runtime test: FAILED${NC}"
        fi
        docker stop test-main >/dev/null 2>&1
    fi
elif [[ $SIMPLE_SUCCESS == true ]]; then
    echo -e "${BLUE}🧪 Testing simplified build...${NC}"
    if docker run --rm -d --name test-simple -p 3001:3000 $IMAGE_NAME:simple; then
        sleep 5
        if curl -f http://localhost:3001 >/dev/null 2>&1; then
            echo -e "${GREEN}✅ Simplified build runtime test: SUCCESS${NC}"
        else
            echo -e "${RED}❌ Simplified build runtime test: FAILED${NC}"
        fi
        docker stop test-simple >/dev/null 2>&1
    fi
fi

echo -e "${BLUE}📝 Recommendation:${NC}"
if [[ $MAIN_SUCCESS == true ]]; then
    echo -e "${GREEN}Use main Dockerfile for production (better optimization)${NC}"
elif [[ $SIMPLE_SUCCESS == true ]]; then
    echo -e "${YELLOW}Use Dockerfile.simple for production (compatibility)${NC}"
else
    echo -e "${RED}Both builds failed. Check your dependencies and configuration.${NC}"
    exit 1
fi

echo -e "${GREEN}🎉 Build test completed!${NC}"
