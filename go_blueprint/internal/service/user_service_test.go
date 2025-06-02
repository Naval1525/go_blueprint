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
