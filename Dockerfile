FROM ubuntu

RUN sed -ri 's/https?:\/\/.*\.debian\.org/https:\/\/mirrors.tuna.tsinghua.edu.cn/g' /etc/apt/sources.list \
    && apt-get update \
    && apt-get install -y curl git \
    && curl -sL https://deb.nodesource.com/setup_14.x | bash - \
    && apt-get update \
    && apt-get install -y nodejs \
    && apt-get autoremove -y \
    && apt-get clean -y \
    && rm -rf /var/lib/apt/lists/* \
    && mkdir -p /workspace/app

WORKDIR /workspace/app

RUN git clone git://github.com/mobz/elasticsearch-head.git . \
    && npm install

CMD ["npm", "run", "start"]