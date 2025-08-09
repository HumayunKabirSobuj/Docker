# Step 1: Node.js official image ব্যবহার করবো
FROM node:18

# Step 2: App ফাইল গুলো container এর ভিতরে কপি করবো
WORKDIR /app
COPY . .

# Step 3: Dependency install করবো

RUN npm install
RUN npm install -g prisma

# Step 4: App চালানোর কমান্ড
CMD ["npm", "run", "dev"]

# Step 5: Port expose করবো
EXPOSE 5000
