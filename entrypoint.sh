#!/bin/sh

echo "📦 Importing credentials..."
n8n import:credentials --input /data/credentials.json

echo "📦 Importing workflows..."
n8n import:workflow --input /data/workflows.json

echo "🚀 Starting n8n..."
n8n start
