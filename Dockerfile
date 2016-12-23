FROM iron/base
WORKDIR /app
# copy binary into image
COPY helloworld /app/
ENTRYPOINT ["./helloworld"]