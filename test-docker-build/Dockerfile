FROM node:20
WORKDIR /harness
COPY . /harness
# installs node modules
RUN npm run bootstrap
RUN npm run build
COPY . .
