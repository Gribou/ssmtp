FROM alpine:3.18

MAINTAINER FT

RUN set -eux; \
    apk add --update --no-cache \
        ssmtp 

RUN adduser -S user  -G root
USER user
WORKDIR /home/user

CMD ["sh", "-c", "tail -f /dev/null"]
		        	
