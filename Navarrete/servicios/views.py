from django.shortcuts import render
from django.http import JsonResponse
from .models import Servicio

def get_services(request):
    # Obtener todos los servicios desde el modelo
    services = Servicio.objects.all()

    # Formatear la data como desees
    data = []

    for service in services:
        # Serializar manualmente los objetos ManyToManyField
        items = [{'title': item.titulo_item, 'description': item.descripcion_item} for item in service.items.all()]

        services_data = {
            'icon': service.icono.url,  # Obtener la URL del icono
            'title': service.titulo,
            'description': service.descripcion,
            'items': items,
            'image': service.imagen.url,
        }

        data.append(services_data)

    return JsonResponse(data, safe=False)
