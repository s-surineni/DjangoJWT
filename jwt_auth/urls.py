from django.urls import path
from jwt_auth import views


urlpatterns = [
    path('hello/', views.HelloView.as_view(), name='hello'),
]
