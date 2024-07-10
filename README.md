### Steps

1. Get project info
    * Technology: Go
    * Version: 1.22.4
    * Port: 8080
    * Database: Postgres
2. Test: run
3. Test: build
4. Test: run bin (binary)
5. Create Dockerfile
    * Test: create image
    * Test: create container
6. Create docker-compose.yml
7. Run YML file
    * note: image created
    * note: container created
    * note: containers up
8. Create github YML (main.yml)


### How it works

Local:
    - prepare (installing dependencies)
    - execute (run application, using 'go run')

Production:
    - prepare (installing dependencies)
    - build
    - execute (run application, using binary from build)

### Commands

- installing dependencies			>> go mod download && go mod verify
- run application (from go run)		>> go run cmd/journey/journey.go
- build application					>> go build cmd/journey/journey.go
- run application (from binary)		>> ./journey

### Docker Commands

- create image						>> docker build -t nlw-journey-go-main:v1 .
- create image, no cache			>> docker build --no-cache -t <nlw-journey-go-main:v1> .
- list image						>> docker image ls
- run the container					>> docker run -d -p 8080:8080 nlw-journey-go-main:v2
- list container up					>> docker ps
- list container					>> docker ps -a
- check logs						>> docker logs 284841de58fc
- run yml file						>> docker-compose up --build -d
- remove image					    >> docker rmi <image_id>
- remove container					>> docker rm <container_id>
- stop container only if is up 		>> docker stop api-db
- clear build cache 				>> docker builder prune


