# Guac-Bowl

A Docker Compose setup to run [Guacamole](https://guacamole.apache.org/) clientless remote desktop gateway.

- [guacamole](https://hub.docker.com/r/guacamole/guacamole)
- [guacd](https://hub.docker.com/r/guacamole/guacd)
- [postgres](https://hub.docker.com/_/postgres)

# Getting Started

This setup requires two .env files (`.db.env` and `.guac.env`) where the values for environment variables configuring the database name, user, and password match.

See <https://guacamole.apache.org/doc/gug/postgresql-auth.html> for more config options.

### .db.env

```env
POSTGRES_DB=some_db
POSTGRES_USER=some_user
POSTGRES_PASSWORD=some_password
```

### .guac.env

```env
POSTGRESQL_ENABLED=true
POSTGRESQL_DATABASE=some_db
POSTGRESQL_USERNAME=some_user
POSTGRESQL_PASSWORD=some_password
```

## Pull/Build Images and Run Containers

```bash
docker compose up -d
```

The interface will run on the host's port `:8080/guacamole`

The default user will be "guacadmin" with password "guacadmin".
