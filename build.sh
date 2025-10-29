#!/usr/bin/env bash
set -o errexit

# Build frontend
cd frontend
npm install
npm run build

# Move built files to backend/static
mkdir -p ../backend/static
cp -r dist/* ../backend/static/

# Install backend requirements
cd ../backend
pip install -r requirements.txt
