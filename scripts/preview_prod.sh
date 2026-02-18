#!/bin/bash

# Build the site with a local baseURL so CSS/JS loads correctly
echo "Building production site for local preview..."
hugo --minify --gc --baseURL "http://localhost:8000/"

# Serve the 'public' directory
echo "Serving at http://localhost:8000 — Press Ctrl+C to stop."
cd public && python3 -m http.server 8000
