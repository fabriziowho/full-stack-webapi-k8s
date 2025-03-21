# Step 1: Build the app
FROM node:16 AS build

WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install
COPY . ./

# Step 2: Run the app in production
FROM node:16-slim

WORKDIR /app
COPY --from=build /app /app

EXPOSE 5000

CMD ["node", "app.js"]
