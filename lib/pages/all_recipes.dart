import 'package:flutter/material.dart';
import 'package:mealplannerapp/models/recipes.dart';
import 'package:mealplannerapp/pages/recipe_detail.dart';

class AllRecipesPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('All Recipes'),
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          return RecipeCard(recipe: recipes[index]);
        },
      ),
    );
  }
}

class RecipeCard extends StatelessWidget {
  final Recipe recipe;

  const RecipeCard({Key? key, required this.recipe}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(8.0),
      child: ListTile(
        leading: CircleAvatar(
          backgroundImage: AssetImage('assets/images/${recipe.image}'),
        ),
        title: Text(recipe.title),
        subtitle: Text(recipe.category),
        onTap: () {
          // Navigate to recipe detail page
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => RecipeDetailPage(recipe: recipe),
            ),
          );
        },
      ),
    );
  }
}
