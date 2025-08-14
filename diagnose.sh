#!/bin/bash

# Diagnostic Script for Onbongo B2B
# Identifies common build and deployment issues

echo "🔍 Onbongo B2B - Diagnostic Tool"
echo "=================================="

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

# Check Node.js version
echo -e "\n${BLUE}📋 Node.js Environment:${NC}"
if command -v node >/dev/null 2>&1; then
    NODE_VERSION=$(node --version)
    echo "Node.js: $NODE_VERSION"
    
    # Extract major version number
    NODE_MAJOR=$(echo $NODE_VERSION | sed 's/v\([0-9]*\).*/\1/')
    
    if [ "$NODE_MAJOR" -ge 20 ]; then
        echo -e "${GREEN}✅ Node.js version is compatible (20+)${NC}"
    else
        echo -e "${RED}❌ Node.js version too old (requires 20+)${NC}"
        echo -e "${YELLOW}💡 Solution: Upgrade Node.js or use Dockerfile.fixed${NC}"
    fi
else
    echo -e "${RED}❌ Node.js not found${NC}"
fi

if command -v npm >/dev/null 2>&1; then
    NPM_VERSION=$(npm --version)
    echo "npm: v$NPM_VERSION"
else
    echo -e "${RED}❌ npm not found${NC}"
fi

# Check Docker
echo -e "\n${BLUE}🐳 Docker Environment:${NC}"
if command -v docker >/dev/null 2>&1; then
    if docker info >/dev/null 2>&1; then
        echo -e "${GREEN}✅ Docker is running${NC}"
        DOCKER_VERSION=$(docker --version)
        echo "$DOCKER_VERSION"
    else
        echo -e "${RED}❌ Docker is not running${NC}"
    fi
else
    echo -e "${RED}❌ Docker not found${NC}"
fi

# Check package.json and lock file
echo -e "\n${BLUE}📦 Dependencies:${NC}"
if [ -f "package.json" ]; then
    echo -e "${GREEN}✅ package.json found${NC}"
    
    # Check for adapter-node
    if grep -q "@sveltejs/adapter-node" package.json; then
        echo -e "${GREEN}✅ adapter-node in package.json${NC}"
    else
        echo -e "${YELLOW}⚠️  adapter-node not found in package.json${NC}"
    fi
else
    echo -e "${RED}❌ package.json not found${NC}"
fi

if [ -f "package-lock.json" ]; then
    echo -e "${GREEN}✅ package-lock.json found${NC}"
    
    # Check if lock file is in sync
    if [ -f "node_modules" ]; then
        echo -e "${BLUE}Checking lock file sync...${NC}"
        if npm ci --dry-run >/dev/null 2>&1; then
            echo -e "${GREEN}✅ package-lock.json is in sync${NC}"
        else
            echo -e "${RED}❌ package-lock.json is out of sync${NC}"
            echo -e "${YELLOW}💡 Solution: Run ./fix-deps.sh${NC}"
        fi
    fi
else
    echo -e "${YELLOW}⚠️  package-lock.json not found${NC}"
    echo -e "${YELLOW}💡 Solution: Run npm install${NC}"
fi

# Check build files
echo -e "\n${BLUE}🏗️  Build Configuration:${NC}"
if [ -f "svelte.config.js" ]; then
    echo -e "${GREEN}✅ svelte.config.js found${NC}"
else
    echo -e "${RED}❌ svelte.config.js not found${NC}"
fi

if [ -f "vite.config.ts" ] || [ -f "vite.config.js" ]; then
    echo -e "${GREEN}✅ vite.config found${NC}"
else
    echo -e "${YELLOW}⚠️  vite.config not found${NC}"
fi

# Check Dockerfile options
echo -e "\n${BLUE}🐋 Dockerfile Options:${NC}"
if [ -f "Dockerfile" ]; then
    echo -e "${GREEN}✅ Dockerfile found${NC}"
else
    echo -e "${RED}❌ Dockerfile not found${NC}"
fi

if [ -f "Dockerfile.simple" ]; then
    echo -e "${GREEN}✅ Dockerfile.simple found${NC}"
else
    echo -e "${YELLOW}⚠️  Dockerfile.simple not found${NC}"
fi

if [ -f "Dockerfile.fixed" ]; then
    echo -e "${GREEN}✅ Dockerfile.fixed found${NC}"
else
    echo -e "${YELLOW}⚠️  Dockerfile.fixed not found${NC}"
fi

# Recommendations
echo -e "\n${BLUE}💡 Recommendations:${NC}"

if [ "$NODE_MAJOR" -lt 20 ]; then
    echo -e "${YELLOW}1. Upgrade Node.js to version 20+ or use Dockerfile.fixed${NC}"
fi

if [ ! -f "package-lock.json" ] || ! npm ci --dry-run >/dev/null 2>&1; then
    echo -e "${YELLOW}2. Fix dependencies: ./fix-deps.sh${NC}"
fi

if ! docker info >/dev/null 2>&1; then
    echo -e "${YELLOW}3. Start Docker daemon${NC}"
fi

echo -e "\n${BLUE}🚀 Suggested Deploy Commands:${NC}"
echo -e "${GREEN}# For automatic resolution:${NC}"
echo -e "  ./deploy.sh"
echo -e "\n${GREEN}# For manual troubleshooting:${NC}"
echo -e "  ./fix-deps.sh"
echo -e "  ./build-test.sh"
echo -e "  docker build -f Dockerfile.fixed -t onbongo-b2b ."

echo -e "\n=================================="
echo -e "${GREEN}Diagnostic completed!${NC}"
