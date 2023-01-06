FROM golang:1.19
WORKDIR /go/
COPY . .
RUN apt update && apt install -y psmisc && apt install -y net-tools && apt install -y stress
CMD ["tail", "-f", "Dockerfile"]

