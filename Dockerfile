FROM node:latest 

ARG PORT
ENV PORT=${PORT}

WORKDIR /app 

COPY package*.json ./

RUN npm install 

COPY . .

CMD ["npm", "run", "start"]