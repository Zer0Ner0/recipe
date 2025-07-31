
from django.urls import include, path
from rest_framework.routers import DefaultRouter
from .views import (
    RecipeViewSet, IngredientViewSet, StepViewSet,
    ReviewViewSet, NotificationViewSet, SavedRecipeViewSet
)

router = DefaultRouter()
router.register(r'recipes', RecipeViewSet, basename='recipe')
router.register(r'ingredients', IngredientViewSet, basename='ingredient')
router.register(r'steps', StepViewSet, basename='step')
router.register(r'reviews', ReviewViewSet, basename='review')
router.register(r'notifications', NotificationViewSet, basename='notification')
router.register(r'saved', SavedRecipeViewSet, basename='saved')

urlpatterns = [
    path('', include(router.urls)),
]
