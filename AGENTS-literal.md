# orders-api

Spring Boot 3.5 / Java 21 REST API that manages customer orders for the
Acme storefront. Consumed by the web frontend and the fulfillment-worker
service; exposes JSON over HTTP under `/api/v1`, backed by PostgreSQL.

## Setup

- Runtime: Java 21 (Temurin) — pinned in `.sdkmanrc` and the Maven toolchain
- Package manager: Maven via the wrapper (`./mvnw`) — never a global `mvn`

```bash
./mvnw -q dependency:go-offline      # warm the dependency cache
docker compose up -d                 # PostgreSQL 16 + LocalStack (S3, SQS)
cp src/main/resources/application-local.example.yml src/main/resources/application-local.yml
```

## Everyday commands

| Task        | Command |
|-------------|---------|
| Build       | `./mvnw clean package` |
| Run locally | `./mvnw spring-boot:run -Dspring-boot.run.profiles=local` |
| All tests   | `./mvnw verify` |
| Single test | `./mvnw test -Dtest=OrderServiceTest` (one method: `-Dtest=OrderServiceTest#rejectsEmptyOrder`) |
| Lint        | `./mvnw spotless:check checkstyle:check` |
| Auto-format | `./mvnw spotless:apply` |

## Definition of done

A change is complete only when:

1. `./mvnw spotless:check checkstyle:check` passes with no new warnings
2. `./mvnw verify` passes — runs unit tests (Surefire) then Testcontainers
   integration tests (Failsafe)
3. New or changed endpoints have an `*IT` test and render correctly in
   Swagger UI at `/swagger-ui.html`

## Code style

- Constructor injection only — no field `@Autowired`. Keeps classes
  testable without starting Spring.
- No Lombok. Use Java records for DTOs and immutable value types.
- Controllers stay thin: `@Valid` validation and DTO mapping only; all
  business logic lives in `service/`.
- Never return JPA entities from controllers — map to response records
  in `api/dto/`. Entities leak lazy-loading and schema details.
- Errors: throw domain exceptions (`OrderNotFoundException`, ...) from
  services; the single `@RestControllerAdvice` in `api/error/` maps them
  to HTTP. No `try/catch` in controllers.
- Config: `@ConfigurationProperties` records in `config/` — no `@Value`
  scattered through the code.

```java
// Canonical controller shape — thin, constructor-injected, records in/out
@RestController
@RequestMapping("/api/v1/orders")
class OrderController {
    private final OrderService orderService;

    OrderController(OrderService orderService) { this.orderService = orderService; }

    @PostMapping
    ResponseEntity<OrderResponse> create(@Valid @RequestBody CreateOrderRequest request) {
        return ResponseEntity.status(HttpStatus.CREATED).body(orderService.create(request));
    }
}
```

## Where things live

- `src/main/java/com/acme/orders/api/` — controllers, DTOs, error handling
- `src/main/java/com/acme/orders/service/` — business logic (plain `@Service` beans)
- `src/main/java/com/acme/orders/repository/` — Spring Data JPA repositories + entities
- `src/main/resources/db/migration/` — Flyway migrations (`V<n>__description.sql`)
- `src/test/java/` — mirrors main packages; `*Test` = unit, `*IT` = integration

## Testing conventions

- JUnit 5 + AssertJ + Mockito.
- Unit tests (`*Test`) must not start a Spring context — plain
  constructor-injected mocks. `@SpringBootTest` is reserved for `*IT`.
- Integration tests (`*IT`) use Testcontainers PostgreSQL and run in the
  `verify` phase; Docker must be running.
- Every new endpoint needs a service-level unit test plus one `*IT`
  covering the happy path and the primary error response.
- Use `@WebMvcTest` slices for validation/serialization edge cases
  instead of full-context tests — they're an order of magnitude faster.

## Git and PR conventions

- Branches: `feat/ORD-123-short-description` (also `fix/`, `chore/`)
- Commits: Conventional Commits — `feat(orders): add cancellation endpoint`
- PRs: title matches the primary commit; description covers what
  changed, why, and pasted output of `./mvnw verify`

## Boundaries

Never:

- Modify an already-applied Flyway migration (checksums break every
  environment) — instead, add a new `V<n>__*.sql`.
- Commit secrets — instead, local creds go in `application-local.yml`
  (gitignored); deployed environments read AWS SSM parameters.
- Hand-edit anything under `target/` or generated OpenAPI output —
  instead, change the annotated source and rebuild.

Ask a human first:

- Adding or upgrading any dependency in `pom.xml`
- Changing request/response contracts on existing `/api/v1` endpoints or
  published SQS message shapes — external consumers depend on both
- Anything touching `PaymentClient` — it calls a paid third-party API
  even under some test configurations

## Gotchas

- First `./mvnw verify` is slow: Testcontainers pulls the PostgreSQL
  image. Subsequent runs are fast.
- App runs on 8080, actuator on 8081. If 8080 is taken, add
  `-Dserver.port=8082`.
- Flyway checksum mismatch locally almost always means an applied
  migration was edited — reset with `docker compose down -v && docker compose up -d`.
- `spring-boot:run` devtools hot reload does not pick up new Flyway
  files — restart the app after adding a migration.

## More docs

- `docs/architecture.md` — read before changing service boundaries or events
- `docs/local-aws.md` — LocalStack setup details if S3/SQS tests misbehave
