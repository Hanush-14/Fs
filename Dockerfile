# Use modern Node.js LTS
FROM node:18-alpine

# Set working directory
WORKDIR /app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install

# Copy the rest of the code
COPY . .

# Expose port your app listens on
EXPOSE 5000

# Start the app
CMD ["node", "index.js"]
