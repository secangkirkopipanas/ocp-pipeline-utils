FROM debian:12-slim

RUN apt update && \
    apt install -y curl git jq zip python3-pip skopeo

RUN curl -s -k -L https://github.com/mikefarah/yq/releases/latest/download/yq_linux_amd64 --output /usr/bin/yq && \
    chmod +x /usr/bin/yq

RUN rm /usr/lib/python3.11/EXTERNALLY-MANAGED

RUN pip3 install kubesplit

ENTRYPOINT ["git"]
CMD ["--help"]