class Recipe {
  final int id;
  final String title;
  final String description;
  final String image;

  Recipe(
      {required this.id,
      required this.title,
      required this.description,
      required this.image});
}

List<Recipe> recipes = [
  Recipe(
      id: 1,
      title: 'Spaghetti Bolognese',
      description: 'Delicious pasta dish...',
      image: 'spaghetti.jpg'),
  Recipe(
      id: 2,
      title: 'Chicken Alfredo',
      description: 'Creamy chicken pasta...',
      image: 'chicken_alfredo.jpg'),
  Recipe(
      id: 3,
      title: 'Curry Chicken',
      description: 'Creamy chicken pasta...',
      image: 'chicken_alfredo.jpg'),
  Recipe(
      id: 4,
      title: 'Greek Salad',
      description: 'Creamy chicken pasta...',
      image: 'chicken_alfredo.jpg'),
  Recipe(
      id: 5,
      title: 'Drunken Noodles',
      description: 'Creamy chicken pasta...',
      image: 'chicken_alfredo.jpg'),
  Recipe(
      id: 6,
      title: 'Bánh hỏi heo quay',
      description: 'Creamy chicken pasta...',
      image: 'chicken_alfredo.jpg'),
];
