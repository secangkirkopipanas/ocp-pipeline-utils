FROM debian:12-slim

RUN apt update && \
    apt install -y wget git jq zip python3-pip

RUN wget https://github.com/mikefarah/yq/releases/latest/download/yq_linux_amd64 -O /usr/bin/yq && \
    chmod +x /usr/bin/yq

RUN rm /usr/lib/python3.11/EXTERNALLY-MANAGED

RUN pip3 install kubesplit

ENTRYPOINT ["git"]
CMD ["--help"]