
FROM nginx:1.15.12-alpine
COPY ./backend/staticfiles/ /usr/local/nginx/html/
COPY ./conf/default.conf /etc/nginx/conf.d/
COPY ./utility/entrypoint.sh /entrypoint.sh
RUN chmod +x /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
CMD ["nginx", "-g", "daemon off;"]
