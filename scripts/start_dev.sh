#!/bin/bash

# Start the Hugo server with drafts enabled and live reload
echo "Starting local Hugo server on http://localhost:1313 ..."
hugo server -D --disableFastRender
