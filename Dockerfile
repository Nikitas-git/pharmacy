FROM node:latest

# Create app directory
WORKDIR /pharmacy

# Install npm packages
COPY package*.json .
RUN npm --version
RUN npm install

# Bundle app source
COPY . .

# Expose port
EXPOSE 5000

# Run the application
CMD ["npm", "start"]

