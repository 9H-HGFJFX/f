FROM nginx:alpine
WORKDIR /usr/share/nginx/html
COPY index.html profile.jpg ./
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
