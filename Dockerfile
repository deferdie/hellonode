# Use a Node image
FROM node:7-onbuild

# Set a maintainer
LABEL maintainer="deferdie@gmail.com"

# Set a health check
HEALTHCHECK --interval=30s --timeout=30s --start-period=5s --retries=3 CMD [ "curl -f http://127.0.0.1:8000 || exit 1" ]

# Expose a port
EXPOSE 8000