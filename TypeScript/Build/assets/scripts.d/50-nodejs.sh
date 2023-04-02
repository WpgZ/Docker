#
# Install node.js and TypeScript
#
set -ex
BASE_PATH="$(dirname "$0")/.."


curl -fsSL https://deb.nodesource.com/setup_18.x | sudo -E bash -
sudo apt-get install -y nodejs

npm install -g --save-dev typescript
