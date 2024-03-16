import 'package:flutter/material.dart';
import 'package:mealplannerapp/components/TrendingRecipes.dart';
import 'package:mealplannerapp/models/recipes.dart';
import 'package:mealplannerapp/pages/recipe_detail.dart';
import 'package:mealplannerapp/pages/category_recipes.dart';

class HomePage extends StatelessWidget {
  final String firstName;

  const HomePage({Key? key, this.firstName = ''}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          firstName.isNotEmpty ? 'Welcome, $firstName!' : 'Meal Planner',
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          GestureDetector(
            onTap: () {
              // Navigate to the recipe detail page with a default recipe
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RecipeDetailPage(
                      recipe: recipes[
                          0]), // Passing the first recipe for demonstration
                ),
              );
            },
            child: const TrendingRecipes(),
          ),
          const SizedBox(height: 30),
          const Text(
            'Explore Categories',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    // Navigate to the category recipes page for Curry
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CategoryRecipesPage(
                          category: 'Curry',
                        ),
                      ),
                    );
                  },
                  child: const CategoryWidget(
                      categoryName: 'Curry', image: 'curry.jpg'),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigate to the category recipes page for Dessert
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const CategoryRecipesPage(
                          category: 'Dessert',
                        ),
                      ),
                    );
                  },
                  child: CategoryWidget(
                      categoryName: 'Dessert', image: 'dessert.jpg'),
                ),
                GestureDetector(
                  onTap: () {
                    // Navigate to the category recipes page for Drinks
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CategoryRecipesPage(
                          category: 'Drinks',
                        ),
                      ),
                    );
                  },
                  child: CategoryWidget(
                      categoryName: 'Drinks', image: 'drinks.jpg'),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class CategoryWidget extends StatelessWidget {
  final String categoryName;
  final String image;

  const CategoryWidget(
      {Key? key, required this.categoryName, required this.image})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 8),
      width: 130,
      height: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.grey[200],
      ),
      child: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/$image',
              width: 110,
              height: 110,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 10),
            Text(
              categoryName,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
