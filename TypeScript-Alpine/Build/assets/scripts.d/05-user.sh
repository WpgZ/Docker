#
# Container user
#
set -ex
BASE_PATH="$(dirname "$0")/.."

echo "Create container user: ${DOCKER_USER}"
adduser -u "${DOCKER_UID}" -G localadm -D -s "/bin/bash" -h "/home/${DOCKER_USER}" "${DOCKER_USER}"
