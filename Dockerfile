
FROM nginx:1.15.12-alpine
COPY ./conf/default.conf /etc/nginx/conf.d/

CMD ["nginx", "-g", "daemon off;"]
