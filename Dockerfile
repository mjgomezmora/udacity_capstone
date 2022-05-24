FROM nginx:stable

## Step 1:
# Copy source code to working directory
COPY . index.html /usr/share/nginx/html/

## Step 2:
RUN apt-get update  && apt-get -y --no-install-recommends install nginx=stable  && apt-get clean && rm -rf /var/lib/apt/lists/*

## Step 3:
# Expose port 80
EXPOSE 80