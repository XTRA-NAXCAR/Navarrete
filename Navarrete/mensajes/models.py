

from django.db import models

class Mensaje(models.Model):
    nombre = models.CharField(max_length=255)
    apellido = models.CharField(max_length=255)
    email = models.EmailField()
    numero_telefono = models.CharField(max_length=255)
    mensaje = models.TextField()

    def __str__(self):
        return f"{self.nombre} {self.apellido}"
