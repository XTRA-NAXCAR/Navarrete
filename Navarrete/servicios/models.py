from django.db import models

class Item(models.Model):
    titulo_item = models.CharField(max_length=255)
    descripcion_item = models.TextField()

    def __str__(self):
        return self.titulo_item

class Servicio(models.Model):
    icono = models.ImageField(upload_to='services/')
    titulo = models.CharField(max_length=255)
    descripcion = models.TextField()
    items = models.ManyToManyField(Item)
    imagen = models.ImageField(upload_to='services/')

    def __str__(self):
        return self.titulo