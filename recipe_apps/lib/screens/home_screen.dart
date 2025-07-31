import 'package:flutter/material.dart';
import '../models/recipe.dart';
import '../constants/colors.dart';
import '../widgets/recipe_card.dart';
import '../widgets/new_recipe_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selectedCategoryIndex = 0;

  final List<String> categories = [
    'All',
    'Indian',
    'Italian',
    'Asian',
    'Chinese',
    'Fruit',
    'Vegetables',
    'Protein',
    'Cereal',
    'Local Dishes',
  ];

  final List<Recipe> featuredRecipes = [
    Recipe(
      title: 'Classic Greek Salad',
      time: '15 Mins',
      rating: '4.5',
      image: 'images/salad.jpg',
    ),
    Recipe(
      title: 'Crunchy Nut Coleslaw',
      time: '10 Mins',
      rating: '3.5',
      image: 'images/salad.jpg',
    ),
    Recipe(
      title: 'Shrimp Chicken Andouille Sausage Jambalaya',
      time: '10 Mins',
      rating: '3.0',
      image: 'images/salad.jpg',
    ),
  ];

  final List<Recipe> newRecipes = [
    Recipe(
      title: 'Steak with tomato sauce and bulgur rice',
      author: 'James Milner',
      time: '20 mins',
      image: 'images/salad.jpg',
      rating: '4.5',
    ),
    Recipe(
      title: 'Chicken meal with sauce',
      author: 'Issabella Ethan',
      time: '20 mins',
      image: 'images/salad.jpg',
      rating: '4.0',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: LayoutBuilder(
          builder: (context, constraints) {
            return SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              padding: const EdgeInsets.all(0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildHeader(),
                  const SizedBox(height: 30),
                  _buildSearchBar(),
                  const SizedBox(height: 15),
                  _buildCategoryFilter(),
                  const SizedBox(height: 30),
                  _buildSectionTitle('Featured'),
                  const SizedBox(height: 10),
                  _buildRecipeList(constraints),
                  const SizedBox(height: 30),
                  _buildSectionTitle('New Recipes'),
                  const SizedBox(height: 15),
                  _buildNewRecipeList(constraints),
                ],
              ),
            );
          },
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: Text(
        title,
        style: const TextStyle(
          color: AppColors.textDark,
          fontSize: 16,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Hello Jega',
                style: TextStyle(
                  color: AppColors.textDark,
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 5),
              Text(
                'What are you cooking today?',
                style: TextStyle(
                  color: AppColors.textLight,
                  fontSize: 11,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ],
          ),
          Column(
            children: [
              _buildAvatar(),
              const SizedBox(height: 36),
              _buildSettingsButton(),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildAvatar() {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: AppColors.yellow,
        borderRadius: BorderRadius.circular(10),
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(10),
        child: Image.asset(
          'images/avatar.png',
          fit: BoxFit.cover,
          errorBuilder: (_, __, ___) =>
              const Icon(Icons.person, color: Colors.white),
        ),
      ),
    );
  }

  Widget _buildSettingsButton() {
    return Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: AppColors.green,
        borderRadius: BorderRadius.circular(10),
      ),
      child: const Icon(Icons.tune, color: Colors.white, size: 20),
    );
  }

  Widget _buildSearchBar() {
    return Padding(
      padding: const EdgeInsets.only(left: 10.0, right: 10.0),
      child: Container(
        height: 40,
        decoration: BoxDecoration(
          color: AppColors.white,
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: AppColors.border, width: 1.3),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: const Row(
          children: [
            Icon(Icons.search, color: AppColors.border, size: 18),
            SizedBox(width: 10),
            Expanded(
              child: Text(
                'Search recipe',
                style: TextStyle(
                  color: AppColors.border,
                  fontSize: 11,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildCategoryFilter() {
    return SizedBox(
      height: 31,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(left: 10, right: 10),
        itemCount: categories.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (_, index) {
          final isSelected = index == selectedCategoryIndex;
          return Padding(
            padding: const EdgeInsets.only(right: 5),
            child: GestureDetector(
              onTap: () => setState(() => selectedCategoryIndex = index),
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 7),
                decoration: BoxDecoration(
                  color: isSelected ? AppColors.green : AppColors.white,
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    color: isSelected
                        ? AppColors.green
                        : AppColors.border.withOpacity(0.4),
                  ),
                ),
                child: Text(
                  categories[index],
                  style: TextStyle(
                    fontSize: 11,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w600,
                    color: isSelected ? Colors.white : AppColors.greenText,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildRecipeList(BoxConstraints constraints) {
    final cardHeight =
        constraints.maxHeight * 0.28; // ~231 on typical 800 height
    return SizedBox(
      height: cardHeight,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(left: 10, right: 10),
        itemCount: featuredRecipes.length,
        physics: const BouncingScrollPhysics(),
        separatorBuilder: (_, __) => const SizedBox(width: 15),
        itemBuilder: (_, index) => RecipeCard(recipe: featuredRecipes[index]),
      ),
    );
  }

  Widget _buildNewRecipeList(BoxConstraints constraints) {
    final cardHeight = constraints.maxHeight * 0.18; // ~127 on typical screen
    return SizedBox(
      height: cardHeight,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.only(left: 10, right: 10),
        itemCount: newRecipes.length,
        physics: const BouncingScrollPhysics(),
        separatorBuilder: (_, __) => const SizedBox(width: 15),
        itemBuilder: (_, index) => NewRecipeCard(recipe: newRecipes[index]),
      ),
    );
  }

  Widget _buildBottomNavigationBar() {
    final screenHeight = MediaQuery.of(context).size.height;
    final barHeight = screenHeight * 0.12;
    final fabHeight = screenHeight * 0.07;

    return SizedBox(
      height: barHeight,
      child: Stack(
        children: [
          Positioned(
            bottom: 0,
            child: Container(
              height: barHeight - 14,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: AppColors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.08),
                    blurRadius: 8,
                    offset: const Offset(0, 0),
                  ),
                ],
              ),
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Icon(Icons.home, color: AppColors.green),
                  Icon(Icons.bookmark_border, color: AppColors.border),
                  SizedBox(width: 48),
                  Icon(Icons.notifications_outlined, color: AppColors.border),
                  Icon(Icons.person_outline, color: AppColors.border),
                ],
              ),
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Center(
              child: SizedBox(
                height: fabHeight,
                width: fabHeight,
                child: FloatingActionButton(
                  heroTag: 'fab_home',
                  onPressed: () {},
                  backgroundColor: AppColors.green,
                  shape: const CircleBorder(),
                  child: const Icon(Icons.add, size: 24),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
