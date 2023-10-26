# Ronoarus_infra

Denis Poleshchuk

## branch cloud-bastion

Подключение к bastion
ssh -i ~/.ssh/appuser appuser@158.160.35.76

Подключение к someinternalhost\
ssh-add ~/.ssh/appuser\
ssh -i ~/.ssh/appuser -A appuser@158.160.35.76\
ssh 10.128.0.13

Подключение к someinternalhost в 1 команду\
ssh -i ~/.ssh/appuser -J appuser@158.160.35.76 appuser@10.128.0.13

Алиас\
ssh someinternalhost

~/.ssh/config

Host someinternalhost\
 HostName 10.128.0.13\
 User appuser\
 IdentityFile ~/.ssh/appuser\
 ProxyJump appuser@158.160.35.76

bastion_IP = 158.160.35.76
someinternalhost_IP = 10.128.0.13

C помощью Lets Encrypt Domain в Setting на дашборде pritunl был получен валидный сертификат.\ Браузер перестал ругаться\
nip.io - "Error creating new order :: too many certificates already issued for \"nip.io\".\
nip.io - Не получилось настроить на него из-за ошибки. Нашел альтарнативу\
https://158.160.35.76.traefik.me/login

## branch cloud-testapp (4 ДЗ)
testapp_IP = 51.250.72.249
testapp_port = 9292

Создал профиль: d.poleshchuk.yc

выполнена команда
yc compute instance create \
  --name reddit-app \
  --hostname reddit-app \
  --memory=4 \
  --create-boot-disk image-folder-id=standard-images,image-family=ubuntu-1604-lts,size=10GB \
  --network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 \
  --metadata serial-port-enable=1 \
  --ssh-key ~/.ssh/appuser.pub

установлен Ruby и Bundler \
установлен MongoDB\
установлен Git\

Приложение запущено на http://51.250.72.249:9292/

yc compute instance create \
  --name reddit-app \
  --hostname reddit-app \
  --memory=4 \
  --create-boot-disk image-folder-id=standard-images,image-family=ubuntu-1604-lts,size=10GB \
  --network-interface subnet-name=default-ru-central1-a,nat-ip-version=ipv4 \
  --metadata serial-port-enable=1 \
  --metadata-from-file='user-data=cloud-init.yaml'
