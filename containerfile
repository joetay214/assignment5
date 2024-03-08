# Builder stage
FROM alpine as builder
WORKDIR /app
COPY data.txt .

# Final stage
FROM fedora
WORKDIR /app
COPY --from=builder /app/data.txt .
