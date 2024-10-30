.PHONY: docker docker-stop migrate-up

docker:
	docker run --name postgres -e POSTGRES_USER=root -e POSTGRES_PASSWORD=secret -p 5432:5432 -d postgres:17-alpine
docker-stop:
	docker stop postgres
migrate-up:
	migrate --path db/migration --database 'postgresql://root:secret@localhost:5432/postgres?sslmode=disable' -verbose up