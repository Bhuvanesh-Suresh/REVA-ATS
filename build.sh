#!/usr/bin/env bash
# Build React app (Vite)
cd frontend
npm install
npm run build

# Copy Vite build output to Flask static folder
rm -rf ../backend/static
mkdir -p ../backend/static
cp -r dist/* ../backend/static/

echo "✅ Vite build completed and copied to backend/static"
