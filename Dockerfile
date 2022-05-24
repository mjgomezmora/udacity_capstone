FROM nginx

## Step 1:
# Copy source code to working directory
COPY . index.html /usr/share/nginx/html/

## Step 2:
RUN apt-get update && apt-get install nginx

## Step 3:
# Expose port 80
EXPOSE 80