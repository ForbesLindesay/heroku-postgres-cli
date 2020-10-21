HEROKU_VERSION="$(docker run forbeslindesay/heroku-postgres-cli:latest version | sed -n 's/.*heroku\///p' | sed -n 's/ .*//p')"

echo "HEROKU_VERSION=${HEROKU_VERSION}"
echo "::set-output name=heroku::${HEROKU_VERSION}"