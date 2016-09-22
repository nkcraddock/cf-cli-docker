FROM alpine

RUN apk update && apk add curl tar

RUN curl -L "https://cli.run.pivotal.io/stable?release=linux64-binary&source=github" | tar -zx \
	&& mv cf /usr/local/bin

CMD ["/bin/sh"]

