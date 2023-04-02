#
# Container user
#
set -ex
BASE_PATH="$(dirname "$0")/.."


echo "Create container user: ${DOCKER_USER}"

#addgroup -g "${DOCKER_UID}" "${DOCKER_USER}"
adduser --uid "${DOCKER_UID}" --disabled-password --shell "/bin/bash" --home "/home/${DOCKER_USER}" "${DOCKER_USER}"
adduser "${DOCKER_USER}" "localadm"
