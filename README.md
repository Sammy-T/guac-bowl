# Guac-Bowl
A docker compose setup to run [Guacamole](https://guacamole.apache.org/) clientless remote desktop gateway.

- [guacamole](https://hub.docker.com/r/guacamole/guacamole)
- [guacd](https://hub.docker.com/r/guacamole/guacd)
- [postgres](https://hub.docker.com/_/postgres)

# Getting Started
This setup requires two .env files where the values for environment variables marked GUACAMOLE_* match variables marked POSTGRES_*.

guac-db/.env
```
POSTGRES_PASSWORD=some_password
GUACAMOLE_USER=some_user
GUACAMOLE_PASSWORD=some_password_2
GUACAMOLE_DATABASE=some_db
```

guacamole/.env
```
POSTGRES_USER=some_user
POSTGRES_PASSWORD=some_password_2
POSTGRES_DATABASE=some_db
```

## Pull/Build Images and Run Containers
```
docker compose up -d
```
The interface will run on the host's port `:8080/guacamole`