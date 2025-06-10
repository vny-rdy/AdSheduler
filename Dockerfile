FROM n8nio/n8n:latest

WORKDIR /data

# Copy credentials and workflows into container
COPY credentials.json /data/credentials.json
COPY workflows.json /data/workflows.json

# Import both before starting the server
CMD ["sh", "-c", "n8n import:credentials --input /data/credentials.json && n8n import:workflow --input /data/workflows.json && n8n start"]
