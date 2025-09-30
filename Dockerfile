# Use official Node.js 21 image
FROM node:21

# Set working directory
WORKDIR /usr/src/app

# Copy package.json and package-lock.json
COPY package*.json ./

# Install dependencies
RUN npm install --production

# Copy the rest of the application code
COPY . .

# Expose the port your app will run on
EXPOSE 4000

# Start the app using PM2
RUN npm install pm2 -g
CMD ["pm2-runtime", "start", "index.js", "--name", "firewall-first"]
