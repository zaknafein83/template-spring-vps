# template-spring-vps

Template GitHub per backend Spring Boot 3.4 + Java 21 + Postgres, predisposto per il deploy automatico sul VPS `zaknafein.ovh`.

Stesso schema di `template-quarkus-vps` ma con Spring Boot. Vedi quel README per istruzioni complete.

## Stack

| Layer | Tecnologia |
|---|---|
| Java | 21 (LTS) |
| Framework | Spring Boot 3.4 |
| Persistenza | Spring Data JPA + Postgres 15 |
| Migrazioni | Flyway |
| Health | Actuator (`/actuator/health/readiness`) |
| Test | spring-boot-starter-test (MockMvc) |

## Endpoint

- `GET /hello` → "Hello from myapp"
- `GET /actuator/health` → status UP
- `GET /actuator/health/readiness` → readiness (controllato dal CI)
- `GET /actuator/health/liveness` → liveness

## Switch a MongoDB

`pom.xml`: commenta starter-data-jpa + postgresql + flyway, decommenta starter-data-mongodb.
`application.properties`: commenta righe `spring.datasource.*` e Flyway, decommenta `spring.data.mongodb.*`.
`docker-compose.yml`: scambia il blocco `db` Postgres con quello Mongo.

## Init

Dopo `gh repo create --template`, lancia:
```bash
./init-rename.sh <nome-progetto>
```

## Licenza

[MIT](LICENSE)
