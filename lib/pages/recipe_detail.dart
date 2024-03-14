import 'package:flutter/material.dart';
import '../models/recipes.dart';


class RecipeDetailPage extends StatelessWidget {
  final Recipe recipe;

  const RecipeDetailPage({super.key, required this.recipe});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(recipe.title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(
              'assets/images/${recipe.image}',
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 16),
            const Text(
              'Description:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Text(recipe.description),
            const SizedBox(height: 16),
            const Text(
              'Ingredients:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 8),
            Expanded(
              child: ListView.builder(
                itemCount: recipe.ingredients.length,
                itemBuilder: (context, index) {
                  return ListTile(
                    title: Text(recipe.ingredients[index]),
                  );
                },
              ),
            ),
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () {
                    // Implement logic to save the recipe
                  },
                  child: const Text('Save'),
                ),
                ElevatedButton(
                  onPressed: () {
                    // Implement logic to share the recipe
                  },
                  child: const Text('Share'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
