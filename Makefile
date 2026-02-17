.PHONY: dev build clean preview server

# Development Server
dev:
	@echo "Starting local development server..."
	./scripts/start_dev.sh

# Production Build
build: clean
	@echo "Building production site..."
	hugo --minify --gc

# Clean Build Artifacts
clean:
	@echo "Cleaning public directory..."
	rm -rf public resources

# Preview Production Build Locally
preview: build
	@echo "Previewing production build..."
	./scripts/preview_prod.sh

# Deploy (Manual shortcut if needed, but CI handles main)
deploy:
	@echo "Deploy is handled by GitHub Actions on push to main."
	@echo "Run: git push origin main"
