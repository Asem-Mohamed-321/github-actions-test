FROM node
WORKDIR /app
COPY package.json .
RUN npm cache clean --force
RUN npm install --verbose
COPY lab.js .
EXPOSE 8085
CMD ["node","lab.js"]

