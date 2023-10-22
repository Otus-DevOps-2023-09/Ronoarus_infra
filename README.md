# Ronoarus_infra
Denis Poleshchuk

## branch cloud-bastion   
Подключение к bastion    
ssh -i ~/.ssh/appuser appuser@158.160.35.76

Подключение к someinternalhost   
ssh-add ~/.ssh/appuser  
ssh -i ~/.ssh/appuser -A appuser@158.160.35.76  
ssh 10.128.0.13

Подключение к someinternalhost в 1 команду   
ssh -i ~/.ssh/appuser -J appuser@158.160.35.76 appuser@10.128.0.13  

Алиас   
ssh someinternalhost

~/.ssh/config

Host someinternalhost   
  HostName 10.128.0.13  
  User appuser  
  IdentityFile ~/.ssh/appuser   
  ProxyJump appuser@158.160.35.76   

bastion_IP = 158.160.35.76
someinternalhost_IP = 10.128.0.13
