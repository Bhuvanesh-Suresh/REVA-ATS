#!/usr/bin/env bash
# Build React app
cd frontend
npm install
npm run build

# Move build to Flask static folder
rm -rf ../backend/static
mkdir -p ../backend/static
cp -r build/* ../backend/static/

echo "✅ Build completed and copied to backend/static"
