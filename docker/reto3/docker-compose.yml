version: '3.7'

services:
  teemii-frontend:
    container_name: frontend
    image: dokkaner/teemii-frontend:develop
    ports:
      - "8080:80"
    networks:
      - teemii-network
    depends_on:
      - teemii-backend

  teemii-backend:
    container_name: backend
    image: dokkaner/teemii-backend:develop
    volumes:
      - teemii-data:/data
    networks:
      - teemii-network
    healthcheck:
      test: ["CMD", "ping", "-c", "1", "localhost"]
      interval: 30s
      timeout: 10s
      retries: 3

networks:
  teemii-network:
    driver: bridge
volumes:
  teemii-data:
    name: teemii-data