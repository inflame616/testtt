FROM nginx:alpine

# Copy tất cả file vào thư mục web của nginx
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Nginx sẽ tự động start
CMD ["nginx", "-g", "daemon off;"]
