FROM nginx:alpine

# Copy your frontend files into nginx's serving directory
COPY hello.html /usr/share/nginx/html/index.html
COPY dist /usr/share/nginx/html/dist

EXPOSE 8080
CMD ["nginx", "-g", "daemon off;"]
