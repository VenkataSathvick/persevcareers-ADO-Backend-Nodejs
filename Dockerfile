# Use the official Node.js 14 image from the Docker Hub as the base image
FROM node:14

# Set the working directory inside the container to /usr/src/app
WORKDIR /usr/src/app

# Copy package.json and package-lock.json (if available) to the working directory
COPY package*.json ./

# Install the dependencies specified in package.json
RUN npm install

# Copy the rest of the application code to the working directory
COPY . .

# Specify the command to run the application
CMD ["node", "index.js"]
