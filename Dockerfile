ARG POSTGRES=postgres:latest
FROM $POSTGRES

RUN apt update && apt upgrade
RUN apt install -y curl
RUN curl https://cli-assets.heroku.com/install-ubuntu.sh | sh

ENTRYPOINT ["heroku"]
