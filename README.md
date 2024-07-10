### DevOps

Technology: Go
Version: 1.22.4
Port: 8080
Database: Postgres

### Steps

Local:
    - prepare (installing dependencies)
    - execute (run application, using 'go run')

Production:
    - prepare (installing dependencies)
    - build
    - execute (run application, using binary from build)

### Commands

>> go mod download && go mod verify     (installing dependencies)
>> go run cmd/journey/journey.go        (run application - from go run)
>> go build cmd/journey/journey.go      (build application)
>> ./journey                            (run application - from binary)

### Docker Commands


>> docker build -t nlw-journey-go-main:v1 .         (build the image)
>> docker image ls                                  (list image)

>> docker run -d -p 8080:8080 nlw-journey-go:v2     (run the container)

>> docker ps                    (list container up)
>> docker ps -a                 (list container)
>> docker logs 284841de58fc     (check logs)

>> docker-compose up --build -d                         (-d: release terminal)

1. >> docker image ls                                           (list image)
2. >> docker rmi <image_id>                                     (remove)
3. >> docker builder prune                                      (clear build cache)
4. >> docker build --no-cache -t <nlw-journey-go-main:v1> .     (create image)

1. >> docker ps -a                  (list container)
2. >> docker stop api-db            (stop container only if is up)
3. >> docker rm <container_id>      (remove)

