from django.shortcuts import render
from django.http import JsonResponse
from .models import Post

def get_posts(request):
    # Obtener todos los posts desde el modelo
    posts = Post.objects.all()

    data = []
    for post in posts:
       post_data = {
         'title': post.titulo,
         'description': post.descripcion,
         'image': post.imagen.url if post.imagen else None,
         'dashboard': post.dashboard,
         'category': { 'id': post.categoria.id, 'name': post.categoria.nombre }
       }

       data.append(post_data)

    # Formatear la data como desees

    return JsonResponse(data, safe=False)