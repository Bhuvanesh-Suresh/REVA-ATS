#!/usr/bin/env bash
set -o errexit

cd frontend
npm install
npm run build

mkdir -p ../backend/static
cp -r dist/* ../backend/static/

cd ../backend
pip install -r requirements.txt
