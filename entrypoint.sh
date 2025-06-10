#!/usr/bin/env bash
#
# This script will run inside your n8n Docker container

# 1. Import credentials
n8n import:credentials --input /data/credentials.json

# 2. Import workflows
n8n import:workflow --input /data/workflows.json

# 3. Finally, start n8n
n8n start
