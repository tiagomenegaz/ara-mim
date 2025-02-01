# Use official Node.js image for building Vue app
FROM node:20 AS build

# Set working directory
WORKDIR /app

# Copy package.json and install dependencies
# COPY package.json package-lock.json ./
COPY package.json ./
RUN npm install

# Copy application source code
COPY . .

# Build the Vue.js application
RUN npm run build

# Use a lightweight web server to serve static files
FROM nginx:alpine AS production
WORKDIR /usr/share/nginx/html

# Copy built frontend files from build stage
COPY --from=build /app/dist .

# Expose port 80 for serving the app
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
