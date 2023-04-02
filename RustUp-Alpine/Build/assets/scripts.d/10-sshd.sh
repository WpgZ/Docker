#
# Enable SSH server
#
set -e
BASE_PATH="$(dirname "$0")/.."

# SSH server
apk add openssh-server

# Enable X11 Forwarding
sed -i -e "s/^[#]*X11Forwarding .*/X11Forwarding yes/" /etc/ssh/sshd_config

# Generate keys
ssh-keygen -t rsa -N '' -f /etc/ssh/ssh_host_rsa_key <<<y 

chmod u+s /usr/sbin/sshd
