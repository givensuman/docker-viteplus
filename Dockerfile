FROM alpine

ENV VITE_PLUS_HOME="/root/.vite-plus"
ENV PATH="${VITE_PLUS_HOME}/bin:${PATH}"

WORKDIR /app

RUN apk add --no-cache \
	bash curl git libgcc libstdc++ && \
	rm -rf /var/cache/apk/*

SHELL ["/bin/bash", "-o", "pipefail", "-c"]

RUN curl -fsSL https://vite.plus/ -o /tmp/vite-plus-install.sh && \
	chmod +x /tmp/vite-plus-install.sh && \
	/tmp/vite-plus-install.sh && \
	rm /tmp/vite-plus-install.sh

CMD ["vp"]
