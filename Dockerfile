# THIS IS FROM CHATGPT SO DON'T FUCKING TRUST IT UNTIL YOU'VE READ THE DOCUMENTATION

FROM python:3.12-slim

ENV PIP_NO_CACHE_DIR=off

# Feels wrong...
WORKDIR /app

# Install Dependencies
RUN apt update && apt install -y \
git \
curl \
make \
&& apt clean

# Copy requirements and metadata
COPY pyproject.toml requirements.txt ./

# Install uv package manager
RUN curl -LsSf https://astral.sh/uv/install.sh | sh

# Create virtualenv and install dependencies
RUN uv venv && \
    . .venv/bin/activate && \
    uv pip install -r requirements.txt

ENV PATH="/app/.venv/bin:$PATH"

COPY src/ src/
COPY tests/ tests/
COPY Makefile .

CMD ["make", "test"]