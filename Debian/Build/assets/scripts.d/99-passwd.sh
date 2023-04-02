#
# Set the container user password and expiration
# Note: Need to be the last one so that su wouldn't need to hanlde password reset
#
set -ex
BASE_PATH="$(dirname "$0")/.."


echo "${DOCKER_USER}:$(cat ${BASE_PATH}/config/PASSWD)" | chpasswd
chage -d 0 "${DOCKER_USER}"
