-- name: CreateUser :one
INSERT INTO users (id, created_at, updated_at, name)
VALUES ($1, $2, $3, $4)
RETURNING *;

-- -- name: GetUser :one
-- SELECT * FROM users
-- WHERE id = :id;

-- -- name: UpdateUser :exec
-- UPDATE users
-- SET name = :name, email = :email, password = :password, updated_at = NOW()
-- WHERE id = :id;

-- -- name: DeleteUser :exec
-- DELETE FROM users
-- WHERE id = :id;

-- -- name: GetUsers :many
-- SELECT * FROM users;