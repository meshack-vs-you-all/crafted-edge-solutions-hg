.PHONY: dev build clean preview server rebuild new-post new-service new-case-study help

# Show help
help:
	@echo "Crafted Edge Solutions — Development Commands"
	@echo "============================================="
	@echo ""
	@echo "  make dev           Start Hugo dev server (hot-reload)"
	@echo "  make build         Production build (minified)"
	@echo "  make preview       Build + serve locally at :8000"
	@echo "  make rebuild       Clean + build + serve (full restart)"
	@echo "  make clean         Remove build artifacts"
	@echo ""
	@echo "  make new-post      Create a new blog post"
	@echo "  make new-service   Create a new service page"
	@echo "  make new-case      Create a new case study"
	@echo ""
	@echo "  make deploy        Deploy info (CI handles it)"
	@echo "  make help          Show this help"

# Development Server (hot-reload)
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

# Preview Production Build Locally (uses localhost baseURL)
preview: clean
	@echo "Previewing production build..."
	./scripts/preview_prod.sh

# Full rebuild + serve
rebuild: clean
	@echo "Full rebuild and preview..."
	./scripts/preview_prod.sh

# Deploy (Manual shortcut if needed, but CI handles main)
deploy:
	@echo "Deploy is handled by GitHub Actions on push to main."
	@echo "Run: git push origin main"

# Create new content
new-post:
	@read -p "Post slug (e.g. my-new-post): " slug; \
	hugo new post/$$slug.md && \
	echo "Created content/post/$$slug.md"

new-service:
	@read -p "Service slug (e.g. ai-consulting): " slug; \
	hugo new services/$$slug.md && \
	echo "Created content/services/$$slug.md"

new-case:
	@read -p "Case study slug (e.g. project-name): " slug; \
	hugo new case-studies/$$slug.md && \
	echo "Created content/case-studies/$$slug.md"
