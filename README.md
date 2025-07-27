# 🍽️ Recipe App Backend (Django + REST API)

This is the backend for a **Recipe App** that allows users to view, manage, and review recipes. Built using **Django** and **Django REST Framework (DRF)**, this backend serves data to a Flutter frontend and includes full CRUD operations, nested relationships, image support, and API filtering.

---

## 🚀 Features

- ✅ RESTful API with Django REST Framework
- ✅ CRUD operations for recipes, ingredients, steps, and reviews
- ✅ Upload and preview images (recipe banners, ingredients)
- ✅ Custom rating summary with stars + review count
- ✅ Inline admin for nested ingredients, steps, and reviews
- ✅ Custom filters like `?min_rating=4`
- ✅ Secure CORS for Flutter frontend integration

---

## 🧱 Tech Stack

| Layer      | Technology               |
|------------|---------------------------|
| Backend    | Django + Django REST Framework |
| DB         | SQLite (default) or PostgreSQL |
| Image Uploads | Pillow + Django media storage |
| Frontend   | Flutter (via REST API)   |
| Admin Panel| Django Admin             |

---

## 🔗 API Endpoints (Examples)

| Method | Endpoint | Description |
|--------|----------|-------------|
| GET    | `/api/recipes/` | List all recipes |
| GET    | `/api/recipes/1/` | Get one recipe |
| POST   | `/api/recipes/` | Create recipe with nested data |
| POST   | `/api/reviews/` | Submit a recipe review |
| GET    | `/api/recipes/?min_rating=4` | Filter recipes by rating |
