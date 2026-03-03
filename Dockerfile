FROM nginx:alpine

# Copy the config as a template; nginx:alpine will run envsubst on all
# *.template files inside /etc/nginx/templates/ at container startup.
COPY nginx.conf /etc/nginx/templates/default.conf.template

EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
