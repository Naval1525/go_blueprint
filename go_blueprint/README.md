# 🧩 Go Blueprint — Clean Architecture REST API

A robust and scalable boilerplate in Go for building REST APIs with a clean, layered architecture.

---

## 🧠 Architecture Overview

This project follows the **3-layer architecture**:

- **Handler Layer**: Handles HTTP requests, parses input, and delegates to the service layer.
- **Service Layer**: Contains the business logic. Acts as a bridge between the handler and repository.
- **Repository Layer**: Deals with data persistence — database queries, inserts, updates, etc.

Each layer is decoupled to improve testability and maintainability.

---

## 🔁 HTTP Request Flow

Here’s how a typical request flows through the system:

1. **Client** sends an HTTP request to an endpoint (e.g., `GET /users`).
2. **Handler Layer** (in `internal/handler/`) receives the request:
   - Parses path/query parameters or body.
   - Validates data (optional).
   - Calls the corresponding service method.

3. **Service Layer** (in `internal/service/`) contains business logic:
   - Handles use-case-specific logic.
   - Calls repository to fetch/store data.

4. **Repository Layer** (in `internal/repository/`) talks to the database:
   - Executes SQL queries or uses an ORM.
   - Returns data back to the service layer.

5. **Service Layer** processes the response and returns to handler.
6. **Handler** sends the final HTTP response back to the client.

---

## 🧩 Folder Responsibilities

- **`cmd/api/`**: Application entry point (main.go).
- **`internal/handler/`**: HTTP handlers (controllers).
- **`internal/service/`**: Core application logic.
- **`internal/repository/`**: Data access (SQL, ORM, etc.).
- **`internal/model/`**: Structs used across layers (e.g., `User`).
- **`internal/database/`**: DB connection logic and setup.
- **`configs/`**: Application and environment configuration.

---

## ⚙️ Setup Instructions

### 1. Clone the repo

```bash
git clone https://github.com/yourusername/go_blueprint.git
cd go_blueprint
