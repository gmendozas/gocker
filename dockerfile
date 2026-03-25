FROM golang:1.21-alpine AS builder

RUN adduser -D builderuser

WORKDIR /app


COPY main.go .
#COPY index.html .

# Use go modules if needed 
# COPY go.mod go.sum ./
# RUN go mod download


RUN CGO_ENABLED=0 GOOS=linux go build -o server main.go

# Stage 2: Minimal secure runtime
FROM scratch

WORKDIR /app

COPY --from=builder /app/server .
#COPY --from=builder /app/index.html .

USER 1000

EXPOSE 8080

ENTRYPOINT ["./server"]