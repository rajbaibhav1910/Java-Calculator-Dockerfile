# Build stage
FROM openjdk:17-jdk-slim AS builder

WORKDIR /app

COPY Calculator.java .

RUN javac Calculator.java

# Runtime stage
FROM openjdk:17-jdk-slim

WORKDIR /app

COPY --from=builder /app/*.class .

CMD ["java", "Calculator"]
