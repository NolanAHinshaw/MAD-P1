import 'package:flutter/material.dart';
import 'package:mealplannerapp/models/recipes.dart';
import 'package:mealplannerapp/pages/recipe_detail.dart';

class CategoryRecipesPage extends StatelessWidget {
  final String category;

  const CategoryRecipesPage({Key? key, required this.category})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Assuming `recipes` is accessible globally or imported from another file
    List<Recipe> categoryRecipes =
        recipes.where((recipe) => recipe.category == category).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text('Recipes for $category'),
      ),
      body: ListView.builder(
        itemCount: categoryRecipes.length,
        itemBuilder: (context, index) {
          final recipe = categoryRecipes[index];
          return ListTile(
            title: Text(recipe.title),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => RecipeDetailPage(recipe: recipe),
                ),
              );
            },
          );
        },
      ),
    );
  }
}
