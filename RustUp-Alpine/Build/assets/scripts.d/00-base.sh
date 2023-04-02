#
# Image base packages
#
set -ex
BASE_PATH="$(dirname "$0")/.."


addgroup -S localadm

apk add ca-certificates doas git musl-locales xauth

cat > /etc/doas.d/localadm.conf << EOF
permit nopass :localadm
EOF
