#!/usr/bin/env bash
# Build dev image, run with a bind mount on src for hot reloading.
set -euo pipefail

docker build -t react-app:dev -f Dockerfile.dev .

docker run --rm -it -p 3000:3000 \
  -v "$(pwd)/src:/app/src" \
  react-app:dev
