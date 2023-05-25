FROM node:16

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install

COPY . .


# You already had a default url.
# ENV REACT_APP_BACKEND_URL http://localhost:80/api


RUN npm run build

RUN npm install -g serve

EXPOSE 5000


CMD ["serve", "-s", "-l", "5000", "build"]
