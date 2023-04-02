#
# Install node.js and TypeScript
#
set -ex
BASE_PATH="$(dirname "$0")/.."


apk add nodejs npm
npm install -g --save-dev typescript
