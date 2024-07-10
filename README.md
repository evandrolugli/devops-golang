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

installing dependencies
>> go mod download && go mod verify

run application (from go run)
>> go run cmd/journey/journey.go

build application
>> go build cmd/journey/journey.go

run application (from binary)
>> ./journey

### Docker Commands

build the image
>> docker build -t nlw-journey-go-main:v1 .

>> docker image ls (list image)

run the container
>> docker run -d -p 8080:8080 nlw-journey-go:v2

>> docker ps
>> docker ps -a
>> docker logs 284841de58fc

>> docker-compose up --build -d (default yml file)
>> docker-compose -f docker-compose.yml up --build -d (specific yml file)
