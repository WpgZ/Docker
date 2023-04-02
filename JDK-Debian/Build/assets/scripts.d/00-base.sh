#
# Image base package
#
set -ex
BASE_PATH="$(dirname "$0")/.."


apt install -y --no-install-recommends ca-certificates locales git sudo

cat > /etc/apt/apt.conf.d/00norecommend << EOF
APT::Install-Recommends "0";
APT::Install-Suggests "0";
EOF


cat > /etc/locale.gen << EOF
en_CA.UTF-8 UTF-8
en_US.UTF-8 UTF-8
zh_CN.UTF-8 UTF-8
EOF

locale-gen


addgroup --system localadm

cat > /etc/sudoers.d/localadm << EOF
%localadm	ALL=(ALL:ALL) NOPASSWD: ALL
EOF
