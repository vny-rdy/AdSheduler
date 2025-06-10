# 1. Base image
FROM n8nio/n8n:latest

# 2. Set working dir (n8n stores its DB/config under /home/node/.n8n or /data)
WORKDIR /data

# 3. Copy in your exported files and the script
COPY credentials.json    /data/credentials.json
COPY workflows.json      /data/workflows.json
COPY entrypoint.sh       /data/entrypoint.sh

# 4. Make sure the script is executable
RUN chmod +x /data/entrypoint.sh

# 5. Use the script as entrypoint
ENTRYPOINT ["/data/entrypoint.sh"]
