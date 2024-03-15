import 'package:flutter/material.dart';
import 'package:mealplannerapp/components/TrendingRecipes.dart';

class MealPlanner extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Recipe App'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
// other homepage components
          TrendingRecipes(),
        ],
      ),
    );
  }
}
