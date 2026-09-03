FROM node:lts

WORKDIR /home/app
COPY package.json yarn.lock ./
RUN yarn install

COPY . .

USER node

# ENV PORT 3000

# EXPOSE 3000

ENTRYPOINT ["/bin/bash","-c", "/usr/local/bin/npm start"]
