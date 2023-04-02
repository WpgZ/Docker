#
# Install node.js and TypeScript
#
set -e
BASE_PATH="$(dirname "$0")/.."


apk add libgcc

su - "${DOCKER_USER}" -c "curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh -s -- -y"
su - "${DOCKER_USER}" -c "echo 'source ~/.cargo/env' >> .bashrc"
