#
# Enable SSH server
#
set -ex
BASE_PATH="$(dirname "$0")/.."


# SSH server
apt install -y openssh-server

chmod u+s /usr/sbin/sshd
mkdir /run/sshd
