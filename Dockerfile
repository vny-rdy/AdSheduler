# Use the official n8n image
FROM n8nio/n8n:latest

# Set working directory
WORKDIR /data

# Copy exported data
COPY credentials.json /data/credentials.json
COPY workflows.json /data/workflows.json

# Copy and set permissions before copying (done locally)
COPY entrypoint.sh /usr/local/bin/entrypoint.sh

# Use entrypoint directly
ENTRYPOINT ["/usr/local/bin/entrypoint.sh"]
