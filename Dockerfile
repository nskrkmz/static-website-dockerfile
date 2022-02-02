FROM nginx:1.15.8-alpine

# Set Nginx configuration
copy ./nginx.conf /etc/nginx/nginx.conf

# Add all content
copy . /usr/share/nginx/html/

# add specific contents
#copy ./*.png /usr/share/nginx/html/
#copy ./*.js /usr/share/nginx/html/
#copy ./*.ico /usr/share/nginx/html/