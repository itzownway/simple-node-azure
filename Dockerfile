# Use Node 20 (matches your package.json)
FROM node:20-alpine

# Create app directory
WORKDIR /app

# Copy only package files first (better caching)
COPY package*.json ./

# Install only production dependencies
RUN npm install --omit=dev

# Copy rest of the code
COPY . .

# Expose port (for local)
EXPOSE 3000

# Start app using npm (better practice)
CMD ["npm", "start"]