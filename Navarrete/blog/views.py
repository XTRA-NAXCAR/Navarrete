from django.core.serializers import serialize
from django.http import JsonResponse
from .models import Post

def get_data(request):
    # Obtener todos los posts desde el modelo
    posts = Post.objects.all()

    # Formatear la data como desees
    data = []

    for post in posts:
        post_data = {
            'title': post.titulo,
            'description': post.descripcion,
            'image': post.imagen.url if post.imagen else None,  # URL de la imagen, si existe
            'category': {'id': post.categoria.id, 'name': post.categoria.nombre}  # Convertir la categoría en un formato serializable
        }
        data.append(post_data)

    return JsonResponse(data, safe=False)
