FROM --platform=linux/arm64/v8 emirdeliz/cpp-opencv:latest
LABEL maintainer="Emir Marques <emirdeliz@gmail.com>"

# Install node
RUN git clone https://github.com/nodejs/node.git \
	&& cd node \
	&& ./configure \
	&& make \
	&& sudo make install

RUN mkdir source
WORKDIR /source