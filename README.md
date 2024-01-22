# Инфраструктурные настройки сервиса
[![Deploy NGINX](https://github.com/Team-Base64/edu-crm-infrastructure/actions/workflows/nginx-deploy.yaml/badge.svg?branch=nginx-0.1)](https://github.com/Team-Base64/edu-crm-infrastructure/actions/workflows/nginx-deploy.yaml) [![Deploy Docker Compose](https://github.com/Team-Base64/edu-crm-infrastructure/actions/workflows/docker-compose-deploy.yaml/badge.svg?branch=docker-compose-0.1)](https://github.com/Team-Base64/edu-crm-infrastructure/actions/workflows/docker-compose-deploy.yaml) [![Deploy Postgres](https://github.com/Team-Base64/edu-crm-infrastructure/actions/workflows/postgres-deploy.yaml/badge.svg?branch=postgres-0.1)](https://github.com/Team-Base64/edu-crm-infrastructure/actions/workflows/postgres-deploy.yaml)

Репозиторий разделен на 3 части:
- [Nginx](https://github.com/Team-Base64/edu-crm-infrastructure/tree/nginx-main)
- [Docker](https://github.com/Team-Base64/edu-crm-infrastructure/tree/docker-compose-main)
- [Postgres](https://github.com/Team-Base64/edu-crm-infrastructure/tree/postgres-main)

### Особенности

Данная ветка служит для ручного управления сервером через **GitHub Actions**. В workflow *Server Control* доступны следующие команды:
- **enable** - запуск nginx и docker compose
- **disable** - остановка nginx и docker compose
- **restart** - перезапуск nginx и docker compose с сохранением содержимого присоединяемых volumes
- **update envs and confs (NO DB)** - обновление параметров из GitHub Secrets и Vars на сервере (из данного репозитория) без тех, что относятся к базе данных
- **update DB envs and confs** - обновление параметров из GitHub Secrets и Vars на сервере (из данного репозитория) для базе данных (данные перезаписываются, но бд не падает)
