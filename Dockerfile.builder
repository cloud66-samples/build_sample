FROM golang:1.26

# maintainer info
LABEL maintainer="Cloud 66"

WORKDIR /app

# copy module file and source code
COPY go.mod ./
COPY . .

# build the binary
RUN go build -o ha_build_sample
