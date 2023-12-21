from django.http import JsonResponse
from django.views.decorators.csrf import csrf_exempt
from .models import Mensaje
import json

@csrf_exempt
def messages_post(request):
    if request.method == 'POST':
        # Asumiendo que los datos están en el cuerpo JSON de la solicitud
        data = json.loads(request.body)
        nombre = data.get('name', '')
        apellido = data.get('last_name', '')
        email = data.get('email', '')
        numero_telefono = data.get('phone', '')
        mensaje = data.get('message', '')

        # Guardar en el modelo
        Mensaje.objects.create(
            nombre=nombre,
            apellido=apellido,
            email=email,
            numero_telefono=numero_telefono,
            mensaje=mensaje
        )

        return JsonResponse({'mensaje': 'Datos guardados correctamente', 'status': 200}, status=200)
    else:
        return JsonResponse({'mensaje': 'Solicitud no válida'}, status=400)