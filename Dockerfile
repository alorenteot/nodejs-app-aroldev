FROM node
WORKDIR /usr/src/app
COPY package*.json ./
COPY . ./
RUN npm install
COPY . .

ARG PORT=9080
ENV PORT=${PORT}
EXPOSE ${PORT}

CMD [ "node", "index.js" ]