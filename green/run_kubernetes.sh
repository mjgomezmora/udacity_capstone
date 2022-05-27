# Run the Docker Hub container with kubernetes
kubectl apply -f ./green-controller.json

# Create service LoadBalancer blue
kubectl apply -f ./blue-service.json