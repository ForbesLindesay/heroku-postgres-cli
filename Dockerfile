FROM postgres:12.4

RUN apt update && apt upgrade
RUN apt install -y curl
RUN curl https://cli-assets.heroku.com/install-ubuntu.sh | sh

ENTRYPOINT ["heroku"]
