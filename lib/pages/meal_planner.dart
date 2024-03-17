import 'package:flutter/material.dart';
import 'package:mealplannerapp/components/TrendingRecipes.dart';
import 'package:mealplannerapp/models/recipes.dart';
import 'package:mealplannerapp/pages/recipe_detail.dart';
import 'package:table_calendar/table_calendar.dart';

class MealPlannerPage extends StatefulWidget {
  @override
  MealPlannerState createState() => MealPlannerState();
}

class MealPlannerState extends State<MealPlannerPage> {
  Map<MealTime, List<Recipe>> _groupedRecipes = {};

  @override
  void initState() {
    super.initState();
    // Set the initial display to the current week
    _setInitialDisplay();
  }

  void _setInitialDisplay() {
    final now = DateTime.now();
    final startOfWeek = now.subtract(Duration(days: now.weekday - 1));
    final endOfWeek = startOfWeek.add(Duration(days: 6));
    _groupedRecipes = groupRecipesByMealtime(recipes);
  }

  Map<MealTime, List<Recipe>> groupRecipesByMealtime(List<Recipe> recipes) {
    Map<MealTime, List<Recipe>> groupedRecipes = {};

    for (var recipe in recipes) {
      groupedRecipes.putIfAbsent(recipe.mealTime, () => []);
      groupedRecipes[recipe.mealTime]!.add(recipe);
    }

    return groupedRecipes;
  }

  @override
  Widget build(BuildContext context) {
    final now = DateTime.now();
    final startOfCurrentWeek =
        DateTime(now.year, now.month, now.day - now.weekday + 1);
    print("buildRecipleList: $_buildRecipeLists()");
    final endOfCurrentWeek = startOfCurrentWeek.add(Duration(days: 6));
    return Scaffold(
      appBar: AppBar(
        title: const Text("Personalized Meal Planner"),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TableCalendar(
            firstDay: startOfCurrentWeek,
            lastDay: endOfCurrentWeek,
            focusedDay: DateTime.now(),
            calendarFormat: CalendarFormat.week,
            headerStyle: const HeaderStyle(
              formatButtonVisible: false,
            ),
            daysOfWeekStyle: const DaysOfWeekStyle(
              weekdayStyle: TextStyle(fontWeight: FontWeight.bold),
              weekendStyle: TextStyle(fontWeight: FontWeight.bold),
            ),
            calendarStyle: CalendarStyle(
              todayDecoration: BoxDecoration(
                color: Colors.blue.withOpacity(0.3),
                shape: BoxShape.circle,
              ),
              todayTextStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
              selectedTextStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
              selectedDecoration: const BoxDecoration(
                color: Colors.blue,
                shape: BoxShape.circle,
              ),
            ),
            // other components
          ),
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildRecipeLists(),
            ],
          ))
        ],
      ),
    );
  }

  Widget _buildRecipeLists() {
    List<Widget> recipeLists = [];

    _groupedRecipes.forEach((mealTime, recipes) {
      recipeLists.add(
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                _mealTimeToString(mealTime),
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal, // Allow horizontal scrolling
                child: Row(
                  children: recipes.map((recipe) {
                    return InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) =>
                                RecipeDetailPage(recipe: recipe),
                          ),
                        );
                      },
                      child: Padding(
                        padding: EdgeInsets.only(right: 8.0),
                        child: SizedBox(
                          width: 120, // Adjust the width as needed
                          child: ListTile(
                            title: Text(recipe.title),
                          ),
                        ),
                      ),
                    );
                  }).toList(),
                ),
              ),
            ],
          ),
        ),
      );
    });

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: recipeLists,
    );
  }

  String _mealTimeToString(MealTime mealTime) {
    switch (mealTime) {
      case MealTime.breakfast:
        return 'Breakfast';
      case MealTime.lunch:
        return 'Lunch';
      case MealTime.dinner:
        return 'Dinner';
    }
  }
}
