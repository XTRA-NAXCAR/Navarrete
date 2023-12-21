from django.urls import path
from .views import messages_post

urlpatterns = [
    path('messages_post/', messages_post, name='messages_post'),
]