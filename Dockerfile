FROM node:20.5.1-alpine3.18

RUN apk add --no-cache python3 g++ make

WORKDIR /opt/TediCross/

RUN npm install --omit=dev

VOLUME /opt/TediCross/data/

ENTRYPOINT ["/usr/local/bin/npm"]
CMD ["start", "--", "-c", "data/settings.yaml"]
