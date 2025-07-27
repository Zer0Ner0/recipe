from rest_framework.routers import DefaultRouter
from .views import RecipeViewSet, IngredientViewSet, StepViewSet, ReviewViewSet

router = DefaultRouter()
router.register(r'recipes', RecipeViewSet)
router.register(r'ingredients', IngredientViewSet)
router.register(r'steps', StepViewSet)
router.register(r'reviews', ReviewViewSet)

urlpatterns = router.urls
