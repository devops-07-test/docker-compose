# Развёртывание DevOps инфраструктуры на одной VM

## Шаги:

1. Создать VM Ubuntu 24.04 с CPU 4, RAM 8GB, диск 50GB.
2. Открыть порты: 22 TCP, 1194 UDP, 9090 TCP, 9100 TCP.
3. Подключиться по SSH к VM.
4. Установить Docker и Docker Compose.
5. Клонировать проект или скопировать каталог devops-final.
6. В каталоге проекта выполнить: docker compose up -d --build
7. Проверить работу контейнеров: docker ps
8. Prometheus доступен на http://<IP_VM>:9090
9. VPN лог доступен в контейнере devops-vpn
10. Backup создаётся каждые 5 минут в папке backup.
