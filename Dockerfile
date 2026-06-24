FROM nginx:alpine

# Copy static site into nginx's default serve directory
COPY . /usr/share/nginx/html

# Remove the Dockerfile itself from the served files
RUN rm /usr/share/nginx/html/Dockerfile

EXPOSE 80
