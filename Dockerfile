# ビルド環境
FROM node:16.13-alpine as build-stage

RUN mkdir /app
WORKDIR /app

COPY ./package.json ./yarn.lock ./

RUN yarn install
COPY . .

RUN yarn generate

# 本番環境
FROM nginx:stable-alpine as production-stage
COPY --from=build-stage /app/dist /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]