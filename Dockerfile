ARG VARIANT=0-1

FROM klein2ms/base-devcontainer:rust-${VARIANT} AS base

# Build-time metadata as defined at https://github.com/opencontainers/image-spec/blob/master/annotations.md
ARG BUILD_DATE
ARG VCS_REF
ARG VERSION
LABEL \
    org.opencontainers.image.created=$BUILD_DATE \
    org.opencontainers.image.url="https://github.com/klein2ms/rust-devcontainer" \
    org.opencontainers.image.version=$VERSION \
    org.opencontainers.image.revision=$VCS_REF \
    org.opencontainers.image.documentation="https://github.com/klein2ms/rust-devcontainer" \
    org.opencontainers.image.source="https://github.com/klein2ms/rust-devcontainer" \
    org.opencontainers.image.title="rust-devcontainer" \
    org.opencontainers.image.description="A Rust development container for Visual Studio Code"

FROM base AS devcontainer