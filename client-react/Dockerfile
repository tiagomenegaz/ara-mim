# Use official Node.js image for building Vue app
FROM node:20 AS build

# Set the working directory inside the container
WORKDIR /app
 
# Copy package.json and package-lock.json
COPY package*.json ./
 
# Install dependencies
RUN npm install
 
# Copy the rest of your application files
COPY . .
 
# Expose the port your app runs on
# EXPOSE 9090
 
# Define the command to run your app
CMD ["npm", "start"]
