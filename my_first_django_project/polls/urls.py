from django.urls import path
from . import views

print("Loading polls URLs")  # Debug print

urlpatterns = [
    path("", views.index, name="index"),
]