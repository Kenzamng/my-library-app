FROM node:20-alpine
WORKDIR /app
COPY . .
RUN npm ci
RUN npm run build
RUN npm run export
CMD ["npx", "serve", "out"]
