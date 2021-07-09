# Server to host files for Dockerfiles/Containerfiles to pull from as needed

FROM nginx:latest

USER 0

# Overwrite the default conf.d with a custom one that allows
# for larger file sizes
COPY ./default.conf /etc/nginx/conf.d/default.conf
