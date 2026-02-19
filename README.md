# Crafted Edge Solutions Website

This is the high-performance corporate website for Crafted Edge Solutions, built with **Hugo** and the **Hugo Theme Stack**. It's designed to be a fast, responsive, and SEO-optimized platform for a digital consultancy.

## ✨ Key Features

-   **High-Impact Case Studies**: Detailed showcase of projects with custom layouts for services and portfolio pieces.
-   **Service Catalog**: Structured presentation of consultancy services (Web Dev, AI, Cloud Infrastructure).
-   **Client Dashboard Support**: Designed with integration points for future client portal expansion.
-   **Advanced SEO**: Built-in meta-tag generation and structured data for maximum search engine visibility.

## 🎨 UI/UX & Design

-   **Modern Minimalist Aesthetic**: A clean, professional look focusing on readability and trust.
-   **Fully Responsive**: Optimized for all devices using a mobile-first approach.
-   **Dark/Light Mode**: User-controlled appearance switcher for better accessibility.
-   **Performance-First Architecture**: Achieves near-instant page transitions and high Lighthouse scores.

## Project Structure

```
.
├── assets/
│   └── scss/
│       └── custom.scss    # Custom styles overrides
├── content/
│   ├── about.md
│   ├── case-studies/      # Portfolio/Projects
│   ├── contact.md
│   └── services/          # Services offered
├── layouts/
│   ├── index.html         # Custom homepage layout
│   ├── case-studies/      # Custom layout for case studies
│   └── services/          # Custom layout for services list
├── static/
│   └── images/            # Images (logo, icons, etc.)
├── themes/
│   └── hugo-theme-stack/  # Submodule
└── hugo.yaml              # Main configuration
```

## Running Locally

1.  **Install Hugo Extended**: Ensure you have the extended version of Hugo installed.
    ```bash
    hugo version
    # Should show "extended"
    ```

2.  **Clone the Repository**:
    ```bash
    git clone --recursive <repo-url>
    cd crafted-edge-solutions-hg
    ```

3.  **Start the Server**:
    ```bash
    ```

## Development Workflow

We use `make` to standardize development tasks.

*   **Start Local Server**:
    ```bash
    make dev
    # Or: ./scripts/start_dev.sh
    ```
    Access at `http://localhost:1313`.

*   **Build Production**:
    ```bash
    make build
    ```
    Output is in `public/`.

*   **Preview Production (Locally)**:
    ```bash
    make preview
    # Or: ./scripts/preview_prod.sh
    ```
    Access at `http://localhost:8000`.

*   **Clean Artifacts**:
    ```bash
    make clean
    ```

## Deployment

### Option 1: Netlify (Recommended)

1.  Log in to Netlify and creating a new site from Git.
2.  Connect your repository.
3.  Build Settings:
    *   **Build command**: `hugo --gc --minify`
    *   **Publish directory**: `public`
4.  Environment Variables (Optional):
    *   `HUGO_VERSION`: `0.120.0` (or latest)

### Option 2: GitHub Pages

1.  Update `hugo.yaml`:
    *   Set `baseURL` to `https://<username>.github.io/<repo-name>/`
2.  Use the provided GitHub Actions workflow (create `.github/workflows/hugo.yaml` if needed).

## Customization

*   **Content**: Edit files in `content/`.
*   **Styles**: Edit `assets/scss/custom.scss`.
*   **Layouts**: Edit files in `layouts/`. Use `hugo.yaml` for site-wide configuration.
