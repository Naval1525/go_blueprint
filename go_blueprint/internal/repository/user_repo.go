package repository

// Data access logic for User entity
// Interacts with the database

type UserRepository struct{}

func (r *UserRepository) FindUserByID(id int) string {
    return "User from DB"
}
