#!/bin/bash

# Project root
PROJECT_NAME="go_blueprint"
mkdir -p $PROJECT_NAME/{cmd/api,internal/{handler,service,repository,model,database},configs}

# Root-level files
touch $PROJECT_NAME/{Makefile,.env,.gitignore,README.md,docker-compose.yml,air.toml,go.mod,go.sum}

# Main.go
cat <<EOF > $PROJECT_NAME/cmd/api/main.go
package main

// Entry point for the REST API server

import "fmt"

func main() {
    fmt.Println("Starting API server...")
}
EOF

# Handler
cat <<EOF > $PROJECT_NAME/internal/handler/user_handler.go
package handler

// Contains HTTP handlers for the User entity
// Responsible for request validation and forwarding to the service layer

import "net/http"

func GetUserHandler(w http.ResponseWriter, r *http.Request) {
    // Logic to get user from service
}
EOF

# Handler test
cat <<EOF > $PROJECT_NAME/internal/handler/user_handler_test.go
package handler

// Unit tests for user_handler.go

import "testing"

func TestGetUserHandler(t *testing.T) {
    // TODO: Implement handler test
}
EOF

# Service
cat <<EOF > $PROJECT_NAME/internal/service/user_service.go
package service

// Contains business logic for User entity
// Calls repository layer to fetch/store data

type UserService struct{}

func (s *UserService) GetUser(id int) string {
    return "Mock User"
}
EOF

# Service test
cat <<EOF > $PROJECT_NAME/internal/service/user_service_test.go
package service

// Unit tests for user_service.go

import "testing"

func TestGetUser(t *testing.T) {
    service := UserService{}
    result := service.GetUser(1)
    if result != "Mock User" {
        t.Error("Expected Mock User")
    }
}
EOF

# Repository
cat <<EOF > $PROJECT_NAME/internal/repository/user_repo.go
package repository

// Data access logic for User entity
// Interacts with the database

type UserRepository struct{}

func (r *UserRepository) FindUserByID(id int) string {
    return "User from DB"
}
EOF

# Repository test
cat <<EOF > $PROJECT_NAME/internal/repository/user_repo_test.go
package repository

// Unit tests for user_repo.go

import "testing"

func TestFindUserByID(t *testing.T) {
    repo := UserRepository{}
    user := repo.FindUserByID(1)
    if user != "User from DB" {
        t.Error("Expected User from DB")
    }
}
EOF

# Model
cat <<EOF > $PROJECT_NAME/internal/model/user.go
package model

// Contains domain model definitions

type User struct {
    ID    int    \`json:"id"\`
    Name  string \`json:"name"\`
    Email string \`json:"email"\`
}
EOF

# Database setup
cat <<EOF > $PROJECT_NAME/internal/database/database.go
package database

// Handles DB connection and migration logic

import "fmt"

func InitDB() {
    fmt.Println("Initializing database...")
}
EOF

cat <<EOF > $PROJECT_NAME/internal/database/database_test.go
package database

// Unit tests for database.go

import "testing"

func TestInitDB(t *testing.T) {
    InitDB()
}
EOF

# README
cat <<EOF > $PROJECT_NAME/README.md
# Go Blueprint Project

This is a boilerplate for a REST API project in Golang using Clean Architecture (Handler → Service → Repository).
EOF

echo "✅ Go project structure created at: $PROJECT_NAME"
