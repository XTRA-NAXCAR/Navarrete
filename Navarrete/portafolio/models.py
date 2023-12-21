# En portafolio/models.py

from django.db import models

class Categoria(models.Model):
    nombre = models.CharField(max_length=255)

    def __str__(self):
        return self.nombre

class Post(models.Model):
    titulo = models.CharField(max_length=255)
    descripcion = models.TextField()
    categoria = models.ForeignKey(Categoria, on_delete=models.CASCADE)
    dashboard = models.CharField(max_length=500)
    imagen = models.ImageField(upload_to='portfolio/')

    def __str__(self):
        return self.titulo
