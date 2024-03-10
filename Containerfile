FROM alpine as builder
WORKDIR /app
COPY data.txt .

FROM fedora
WORKDIR /app
COPY --from=builder /app/data.txt .
