#!/bin/bash

# Fix Dependencies Script for Onbongo B2B
# Resolves common Node.js and npm dependency issues

set -e

echo "🔧 Fixing dependencies for Onbongo B2B..."

# Colors
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m'

echo -e "${BLUE}📋 Current Node.js version:${NC}"
node --version
npm --version

echo -e "${BLUE}🧹 Cleaning npm cache...${NC}"
npm cache clean --force

echo -e "${BLUE}🗑️  Removing node_modules and package-lock.json...${NC}"
rm -rf node_modules
rm -f package-lock.json

echo -e "${BLUE}📦 Installing dependencies with latest lock file...${NC}"
npm install

echo -e "${BLUE}🔍 Checking for security vulnerabilities...${NC}"
npm audit || echo -e "${YELLOW}⚠️  Some vulnerabilities found, but continuing...${NC}"

echo -e "${BLUE}🧪 Testing build process...${NC}"
if npm run build; then
    echo -e "${GREEN}✅ Build test successful!${NC}"
else
    echo -e "${RED}❌ Build test failed!${NC}"
    echo -e "${YELLOW}💡 Try upgrading Node.js to version 20 or higher${NC}"
    exit 1
fi

echo -e "${BLUE}📊 Final dependency status:${NC}"
npm list --depth=0 || true

echo -e "${GREEN}🎉 Dependencies fixed successfully!${NC}"
echo -e "${BLUE}💡 You can now run:${NC}"
echo -e "  ${YELLOW}./deploy.sh${NC} - Deploy with Docker"
echo -e "  ${YELLOW}npm run dev${NC} - Start development server"
echo -e "  ${YELLOW}npm run build${NC} - Build for production"
