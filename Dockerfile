
FROM node:16

WORKDIR /app

COPY ./My_Project_MongoDB/package.json ./My_Project_MongoDB/package-lock.json ./

RUN npm install

RUN npm install -g nodemon

COPY ./My_Project_MongoDB/node ./node
COPY ./My_Project_MongoDB/reactfront ./reactfront

EXPOSE 8000

CMD ["nodemon", "app.js","./node/index.js"]
