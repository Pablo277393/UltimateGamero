# Configuración Docker

El proyecto utiliza Docker para gestionar la base de datos MariaDB de forma consistente.

## docker-compose.yml
El archivo se encuentra en la raíz del proyecto.

```yaml
version: '3.8'
services:
  db:
    image: mariadb:latest
    container_name: futmanager_db
    environment:
      MARIADB_ROOT_PASSWORD: root
      MARIADB_DATABASE: UlytimateGamero
    ports:
      - "3309:3306"
```

## Instrucciones
1. Levantar base de datos: `docker compose up -d`.
2. Detener base de datos: `docker compose stop`.
3. Ver logs: `docker compose logs -f db`.
