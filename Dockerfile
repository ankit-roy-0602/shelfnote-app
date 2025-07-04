# Use the official Node.js image
FROM node:18

# Set the working directory
WORKDIR /app

# Copy package.json and package-lock.json first to install dependencies
COPY package*.json ./

# Install dependencies
RUN npm install

# Now, copy the rest of the application files
COPY . .

# Expose the port your app will run on
EXPOSE 3000

# Command to run the app
CMD ["npm", "start"]
