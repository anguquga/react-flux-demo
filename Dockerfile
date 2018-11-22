FROM node:8.12.0
RUN mkdir /app
WORKDIR /app
COPY package.json /app
RUN npm install
RUN npm install -g gulp
COPY . /app
EXPOSE 9005
CMD ["gulp"]