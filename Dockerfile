# Utiliser une image de base légère
FROM nginx:alpine

# Copier le contenu du dossier ./site dans le dossier web de nginx
COPY ./site /usr/share/nginx/html

# Exposer le port 80
EXPOSE 80

# Lancer nginx en mode foreground
CMD ["nginx", "-g", "daemon off;"]