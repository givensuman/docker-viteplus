# givensuman/docker-viteplus

a docker image for vite+

## What is Vite+?

[Vite+](https://viteplus.dev) is the unified toolchain for the web, providing a complete development environment with Vite, package management, testing, and more. It unifies tools like Vite, Vitest, Oxlint, Oxfmt, and more into a single `vp` command.

## Usage

### Docker

You can use this image in your `docker-compose.yml`:

```yaml
services:
  viteplus:
    image: givensuman/viteplus:latest
    ports:
      - "3000:3000"
    volumes:
      - .:/app
    working_dir: /app
```

### Commands

Run any `vp` command using `docker exec` or within your compose service:

**Examples:**

```bash
docker compose exec viteplus vp install    # Install dependencies
docker compose exec viteplus vp dev        # Start development server
docker compose exec viteplus vp build      # Build for production
docker compose exec viteplus vp test       # Run tests
docker compose exec viteplus vp lint       # Lint code
docker compose exec viteplus vp format     # Format code
```

### Configuration

Add this to your `vite.config.js` to ensure the dev server is accessible from outside the container:

```javascript
// vite.config.js
export default {
  server: {
    host: '0.0.0.0',
    port: 3000,
    strictPort: true
  }
}
```
