# Use the official Node.js runtime as a parent image
FROM node:14

# Set the working directory in the container to /app
WORKDIR /app

# Copy the package.json and package-lock.json files to the container
COPY package*.json ./

# Install the app's dependencies
RUN npm install

# Copy the rest of the application code to the container
COPY . .

# Set the container's default command to run the app using node
CMD ["node", "app.js"]