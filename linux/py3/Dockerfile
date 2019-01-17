FROM python:3

COPY entrypoint.sh /entrypoint.sh

RUN set -x \
    && pip install pyinstaller \
    && mkdir /src/ \
    && chmod +x /entrypoint.sh

VOLUME /src/
WORKDIR /src/

ENTRYPOINT ["/entrypoint.sh"]
