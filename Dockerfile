<<<<<<< HEAD
FROM public.ecr.aws/c8e3e2b5/react-app-aws:latest
#123 
# Create app director
=======
public.ecr.aws/c8e3e2b5/react-app-aws:latest
# 
# Create app directory
>>>>>>> 6171fcf (Dockerfile)
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
CMD [ "npm", "run", "start" ]
