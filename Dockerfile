FROM alpine:latest
RUN apk update && apk upgrade && apk add bash
COPY ./script.sh ./script.sh
RUN chmod u+x script.sh
CMD ./script.sh 
