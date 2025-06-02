package service

// Contains business logic for User entity
// Calls repository layer to fetch/store data

type UserService struct{}

func (s *UserService) GetUser(id int) string {
    return "Mock User"
}
