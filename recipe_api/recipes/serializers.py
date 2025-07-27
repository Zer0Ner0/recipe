from rest_framework import serializers
from .models import Recipe, Ingredient, Step, Review

class IngredientSerializer(serializers.ModelSerializer):
    class Meta:
        model = Ingredient
        fields = ['id', 'name', 'image']

class StepSerializer(serializers.ModelSerializer):
    class Meta:
        model = Step
        fields = ['id', 'order', 'instruction']

class ReviewSerializer(serializers.ModelSerializer):
    class Meta:
        model = Review
        fields = ['id', 'name', 'comment', 'rating', 'created_at']

class RecipeSerializer(serializers.ModelSerializer):
    ingredients = IngredientSerializer(many=True)
    steps = StepSerializer(many=True)
    reviews = ReviewSerializer(many=True, read_only=True)
    rating_summary = serializers.SerializerMethodField()

    def get_rating_summary(self, obj):
        avg = obj.average_rating()
        count = obj.review_count()
        if avg is not None and count > 0:
            return f"{avg:.1f} ★ ({count} review{'s' if count > 1 else ''})"
        return "No Reviews Yet"

    class Meta:
        model = Recipe
        fields = [
            'id', 'title', 'description', 'image', 'created_at',
            'ingredients', 'steps', 'reviews',
            'rating_summary'
        ]

    def create(self, validated_data):
        ingredients_data = validated_data.pop('ingredients')
        steps_data = validated_data.pop('steps')
        recipe = Recipe.objects.create(**validated_data)

        for ingredient in ingredients_data:
            Ingredient.objects.create(recipe=recipe, **ingredient)
        for step in steps_data:
            Step.objects.create(recipe=recipe, **step)

        return recipe
