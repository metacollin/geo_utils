FROM node:10

RUN npm install -g geobuf && \
    npm install -g git+https://github.com/andrewharvey/geojson-polygon-labels.git && \
    npm -g install geojsplit && \
    apt-get update && apt-get install -y zstd ruby && gem install toml-rb hash_dot parallel tty-logger

CMD ["true"]
