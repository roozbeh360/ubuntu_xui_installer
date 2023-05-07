#! /bin/bash

apt update && apt upgrade -y
apt install curl socat -y
curl https://get.acme.sh | sh
~/.acme.sh/acme.sh --set-default-ca --server letsencrypt
~/.acme.sh/acme.sh --register-account -m xxxxxxx@xxxx.com
~/.acme.sh/acme.sh --issue -d yourdomain.com --standalone
~/.acme.sh/acme.sh --installcert -d yourdomain.com --key-file /root/private.key --fullchain-file /root/cert.crt
bash <(curl -Ls https://raw.githubusercontent.com/NidukaAkalanka/x-ui-english/master/install.sh)