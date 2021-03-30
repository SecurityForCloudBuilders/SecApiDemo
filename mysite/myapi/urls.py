from django.urls import path, include
from rest_framework import routers
from . import views

router = routers.DefaultRouter()
router.register(r'heros', views.HeroViewSet)
router.register(r'villains', views.VillainViewSet)

urlpatterns = [
    path('', include(router.urls)),
    path('api_auth/', include('rest_framework.urls',
    namespace='rest_framework'))
]
