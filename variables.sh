HEROKU_VERSION="$(docker run forbeslindesay/heroku-postgres-cli:latest version | sed -n 's/.*heroku\///p' | sed -n 's/ .*//p')"
POSTGRES_VERSION="$(cat Dockerfile | sed -n 's/FROM postgres://p')"

echo "HEROKU_VERSION=${HEROKU_VERSION}"
echo "POSTGRES_VERSION=${HEROKU_VERSION}"

echo "::set-output name=heroku::${HEROKU_VERSION}"
echo "::set-output name=postgres::${POSTGRES_VERSION}"