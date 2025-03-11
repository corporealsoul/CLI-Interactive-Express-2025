# Use an official Node.js image as base
FROM node:20-alpine

# Set working directory inside the container
WORKDIR /CLI-Interactive-Express-2025

# Copy package.json and package-lock.json before running npm install
# This allows Docker to cache dependencies
COPY package.json package-lock.json ./

# Install dependencies
RUN npm install

# Copy the entire project files
COPY . .

# Expose the Express app port (default: 3000)
EXPOSE 3000

# Start the Express server
CMD ["npm", "start"]
