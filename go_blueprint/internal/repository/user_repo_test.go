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
