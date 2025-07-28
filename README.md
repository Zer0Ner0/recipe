# 🥘 Food Recipe App — Backend & Mobile Frontend

![Banner](https://img.shields.io/badge/built_with-Django-blue?style=flat&logo=django)
![Flutter](https://img.shields.io/badge/mobile-Flutter-blue?logo=flutter)
![License](https://img.shields.io/badge/license-MIT-green)

A complete **Recipe Sharing App** built with:
- 🔧 **Django + Django REST Framework** for backend
- 📱 **Flutter** for the mobile frontend
- 🎨 UI design

---

## 📱 Mobile App Preview (Based on Figma)

The mobile app offers a modern and intuitive experience to explore and share recipes:

### 🧑‍🍳 Key Features:
- Browse featured recipes with banner images
- View ingredients with icons or images
- Step-by-step cooking instructions
- Community ratings & user reviews
- Save favorites for offline reference
- Clean UI

---

## 🧱 Backend Overview (Django REST API)

### 📦 Features:
- Full CRUD API for:
  - Recipes
  - Ingredients
  - Steps
  - Reviews
- Image upload support
- Admin interface with inline editing
- Custom serializer formatting (`average_rating`, `rating_summary`)
- Custom filters like `?min_rating=4`

### 🔌 API Endpoints:
| Endpoint                      | Description                     |
|------------------------------|----------------------------------|
| `GET /api/recipes/`          | List all recipes                 |
| `GET /api/recipes/<id>/`     | Get a single recipe              |
| `POST /api/recipes/`         | Create a recipe with steps/ingredients |
| `POST /api/reviews/`         | Add a review to a recipe         |

Example response from `GET /api/recipes/`:
```json
{
  "id": 1,
  "title": "Nasi Lemak",
  "description": "Coconut rice served with sambal...",
  "rating_summary": "4.5 ★ (2 reviews)",
  "ingredients": [...],
  "steps": [...],
  "reviews": [...]
}
```

---

## ⚙️ Tech Stack

| Layer        | Stack                  |
|--------------|------------------------|
| Backend      | Django, DRF, SQLite    |
| API          | REST (JSON)            |
| Frontend     | Flutter (mobile only)  |
| UI Design    | Figma (community template) |
| Admin Panel  | Django Admin           |

---

## 🚀 Local Setup

### 🖥 Backend Setup (Django)
```bash
# Clone the repo
git clone https://github.com/your-username/recipe-api.git
cd recipe-api

# Setup virtualenv
python3 -m venv venv
source venv/bin/activate

# Install dependencies
pip install -r requirements.txt

# Run migrations
python manage.py migrate

# Create superuser
python manage.py createsuperuser

# Start server
python manage.py runserver
```

Or run via Gunicorn:
```bash
gunicorn recipe_api.wsgi:application --bind 127.0.0.1:8000
```

### 📱 Flutter Setup (Frontend)
```bash
# Clone the mobile frontend (coming soon or link here)
flutter pub get
flutter run
```

> Update the API base URL in your Flutter `config.dart` to point to your backend.

---

## 📥 Postman Collection

Import the included file [`RecipeAPI.postman_collection.json`](./RecipeAPI.postman_collection.json) into Postman to test endpoints like:

- Create recipes
- Fetch list
- Post reviews

---

## ✅ TODOs

- [x] Backend API
- [x] Admin inline editing
- [x] Average rating & review count
- [x] Filtering by rating
- [ ] Flutter frontend integration
- [ ] User authentication (optional)
- [ ] Image upload via mobile

---

## 📄 License

MIT License — free to use, modify, and distribute.

---

## 🙌 Acknowledgements

- Django REST documentation: [https://www.django-rest-framework.org/](https://www.django-rest-framework.org/)
- Flutter [https://flutter.dev](https://flutter.dev)
