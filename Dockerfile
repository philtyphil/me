# use a node base image
FROM nginx

# set maintainer
LABEL maintainer "philtyphils@gmail.com"

# set a health check
HEALTHCHECK --interval=5s \
            --timeout=5s \
            CMD curl -f http://127.0.0.1:90 || exit 1
COPY /root/.jenkins/workspace/helloworld:/usr/share/nginx/html
# tell docker what port to expose
EXPOSE 90

