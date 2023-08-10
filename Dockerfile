FROM debian:stable-slim

RUN apt-get update && apt-get install --no-install-recommends -y unzip curl ca-certificates && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

WORKDIR /opt/omnisette-server/

RUN bash -c "curl -fsSLo omnisette-server https://github.com/SideStore/omnisette-server/releases/download/0.2.0/omnisette-server-linux-$(uname -m)"

COPY docker-entrypoint.sh ./

ENTRYPOINT [ "./docker-entrypoint.sh" ]
