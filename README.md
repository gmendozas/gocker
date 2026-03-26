# gocker

## Dockerized Golang project

This projects allows to comprehend how to use docker with a Go project, for further information, you can visit these the folllowing links I used to guide  myself:

- [Devopscube](https://devopscube.com/dockerize-a-golang-application/)
- [Medium - Muhammetberdi Jepbarov](https://medium.com/@mecreate/dockerizing-a-go-application-a-complete-guide-with-best-practices-5648d4eb362c)

## Project structure

.
├── .dockerignore
├── dockerfile
├── go.mod
├── index.html
└── main.go

## Testing the project

Build docker:

```
docker build -t go-app .
```

Run docker:

```
docker run -p 8080:8080 go-app
```

![Screenshot of the solution running on a web browser](/assets/localhost.png)