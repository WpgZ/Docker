#
# Set the container user password and expiration
# Note: Need to be the last one so that su wouldn't need to hanlde password reset
#
set -e
BASE_PATH="$(dirname "$0")/.."


# Required by chage
apk add shadow

echo "${DOCKER_USER}:$(cat ${BASE_PATH}/config/PASSWD)" | chpasswd
chage -d 0 "${DOCKER_USER}"
