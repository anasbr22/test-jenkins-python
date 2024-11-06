# Utiliser une image de base Python
FROM python:3.9-slim

# Définir le répertoire de travail
WORKDIR /app

# Copier l'application
COPY app.py .

# Exposer le port
EXPOSE 5000

# Commande pour exécuter l'application (ajustez selon votre point d'entrée)
CMD ["python", "app.py"]
