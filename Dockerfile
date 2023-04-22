FROM teddysun/xray
LABEL maintainer="https://github.com/jianyuann"

COPY config.json /etc/xray/config.json
COPY xray.sh /xray.sh
RUN set -ex \
	&& apk add --no-cache tzdata ca-certificates nginx wget curl \
    && chmod +x /xray.sh

ENV PATH /usr/bin/xray:$PATH
ENV PORT 8888
ENV TZ=Asia/Shanghai

WORKDIR /etc/xray
ENTRYPOINT ["/xray.sh"]
CMD ["xray", "-config=/etc/xray/config.json"]
