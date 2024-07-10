# Stage 1: Build the application
FROM golang:1.22.4-alpine as builder
WORKDIR /app
COPY go.mod go.sum ./
RUN go mod download && go mod verify
COPY . .
#EXPOSE 8080
RUN go build -o /bin/journey ./cmd/journey/journey.go

# Stage 2: Create the runtime image
FROM scratch
WORKDIR /app
COPY --from=builder /bin/journey .
EXPOSE 8080
ENTRYPOINT [ "./journey" ]
