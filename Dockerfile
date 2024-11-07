FROM nginx:alpine

# Copy tất cả file từ thư mục hiện tại vào /usr/share/nginx/html
COPY . /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]
