public.ecr.aws/c8e3e2b5/react-app-aws:latest
 
# Create app directory
RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app
 
# Install app dependencies
COPY package.json /usr/src/app/
 
# Install app dependencies
RUN npm install
 
 
# Bundle app source
COPY . /usr/src/app
 
# Expose port
EXPOSE 80
CMD [ "npm", "start" ]
