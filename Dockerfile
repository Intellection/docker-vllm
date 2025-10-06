ARG VLLM_VERSION
ARG TRITON_VERSION

FROM vllm/vllm-openai:v${VLLM_VERSION}

RUN --mount=type=cache,target=/root/.cache/uv \
    uv pip install --system triton==${TRITON_VERSION}
