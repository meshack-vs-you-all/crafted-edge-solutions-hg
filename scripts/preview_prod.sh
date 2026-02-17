#!/bin/bash

# Build the site
echo "Building production site..."
hugo --minify --gc

# Serve the 'public' directory
echo "Serving 'public' directory at http://localhost:8000 ..."
cd public && python3 -m http.server 8000
