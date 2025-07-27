from django.contrib import admin
from django.utils.html import format_html
from .models import Recipe, Ingredient, Step, Review

# === INLINE ===
class IngredientInline(admin.StackedInline):
    model = Ingredient
    extra = 1
    fields = ['name', 'image', 'image_preview']
    readonly_fields = ['image_preview']

    def image_preview(self, obj):
        if obj.image:
            return format_html('<img src="{}" style="height:50px"/>', obj.image.url)
        return "No Image"

class StepInline(admin.StackedInline):
    model = Step
    extra = 1
    fields = ['order', 'instruction']

class ReviewInline(admin.StackedInline):
    model = Review
    extra = 0
    readonly_fields = ['name', 'comment', 'rating', 'created_at']

# === MAIN FORM ===
class RecipeAdmin(admin.ModelAdmin):
    list_display = ['title', 'created_at', 'image_preview']
    readonly_fields = ['image_preview']

    fieldsets = (
        ("Recipe Info", {
            'fields': ('title', 'description')
        }),
        ("Image", {
            'fields': ('image', 'image_preview'),
        }),
        ("Metadata", {
            'fields': ('created_at',),
        }),
    )

    inlines = [IngredientInline, StepInline, ReviewInline]

    def image_preview(self, obj):
        if obj.image:
            return format_html('<img src="{}" style="height:150px"/>', obj.image.url)
        return "No Image"
