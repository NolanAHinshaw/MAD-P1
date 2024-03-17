import 'package:flutter/material.dart';
import '../models/recipes.dart';
import '../pages/recipe_detail.dart';

class TrendingRecipes extends StatelessWidget {
  const TrendingRecipes({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Trending Recipes:',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 8),
        SizedBox(
          height: 200,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: recipes.length,
            itemBuilder: (context, index) {
              Recipe recipe = recipes[index];
              return GestureDetector(
                onTap: () {
                  // Navigate to the recipe detail page
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => RecipeDetailPage(recipe: recipe),
                    ),
                  );
                },
                child: Card(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/${recipe.image}',
                        height: 120,
                        width: 120,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(height: 8),
                      Text(recipe.title),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
