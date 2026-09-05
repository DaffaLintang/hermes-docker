FROM python:3.11-slim

# Pasang dependensi sistem penting
RUN apt-get update && apt-get install -y --no-install-recommends \
    curl \
    git \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Upgrade pip dan pasang library Hermes Agent
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir hermes-agent

WORKDIR /app