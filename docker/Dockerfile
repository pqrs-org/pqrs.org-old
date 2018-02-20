FROM debian:9

RUN apt-get update && apt-get install -y \
  build-essential \
  cmake \
  curl \
  ruby-mustache \
  ruby-rmagick \
  ruby-sass \
&& apt-get clean \
&& rm -rf /var/lib/apt/lists/*

RUN cd /tmp && \
  curl -OL https://github.com/htacg/tidy-html5/archive/5.6.0.tar.gz && \
  tar xf 5.6.0.tar.gz && \
  cd tidy-html5-5.6.0/build/cmake && \
  cmake ../.. && \
  make && \
  make install

RUN gem install file-monitor

RUN mkdir -p /opt/pqrs.org

CMD make -C /opt/pqrs.org/source
