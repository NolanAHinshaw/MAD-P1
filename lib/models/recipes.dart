class Recipe {
  final int id;
  final String title;
  final String description;
  final String image;
  final List<String> ingredients;
  final String? category;

  Recipe(
      {required this.id,
      required this.title,
      required this.description,
      required this.image,
      required this.ingredients,
      this.category});
}

List<Recipe> recipes = [
  Recipe(
      id: 1,
      title: 'Spaghetti Bolognese',
      description:
          'Spaghetti bolognese consists of spaghetti (long strings of pasta) with an Italian ragù (meat sauce) made with minced beef, bacon and tomatoes, served with Parmesan cheese. Spaghetti bolognese is one of the most popular pasta dishes eaten outside of Italy.',
      image: 'spaghetti.jpg',
      ingredients: [
        '300g spaghetti',
        '1 tablespoon olive oil',
        '1 onion, finely chopped',
        '2 garlic cloves, minced',
        '500g ground beef',
        '1 can (400g) crushed tomatoes',
        '1/2 cup beef broth',
        '1 teaspoon dried oregano',
        '1 teaspoon dried basil',
        'Salt and pepper to taste',
        'Grated Parmesan cheese for serving'
      ]),
  Recipe(
      id: 2,
      title: 'Chicken Alfredo',
      description:
          'Chicken Alfredo is a classic Italian-American dish that combines tender pieces of chicken with a rich and creamy Alfredo sauce, all served over a bed of pasta.',
      image: 'chicken_alfredo.jpg',
      ingredients: [
        '8 oz fettuccine pasta',
        '1 lb boneless skinless chicken breasts',
        'Salt and pepper to taste',
        '2 tbsp olive oil',
        '2 cloves garlic, minced',
        '1 cup heavy cream',
        '1 cup grated Parmesan cheese',
        '1/4 cup chopped fresh parsley',
      ]),
  Recipe(
      id: 3,
      title: 'Curry Chicken',
      description:
          'Curry chicken, originating from the Indian subcontinent but now beloved worldwide, especially in Southeast Asia and the Caribbean, typically consists of chicken pieces cooked in a rich, spiced gravy made with a blend of various herbs and spices, offering a flavorful and aromatic experience.',
      image: 'curry_chicken.jpg',
      ingredients: [
        '2 lbs chicken pieces (bone-in for more flavor)',
        '2 tablespoons vegetable oil',
        '1 large onion, finely chopped',
        '3 cloves garlic, minced',
        '1 tablespoon ginger, minced',
        '2-3 green chilies, slit lengthwise',
        '2 tomatoes, chopped',
        '1 teaspoon cumin seeds',
        '1 teaspoon mustard seeds',
        '1 teaspoon turmeric powder',
        '1 tablespoon curry powder',
        '1 teaspoon garam masala',
        'Salt to taste',
        'Fresh coriander leaves for garnish'
      ]),
  Recipe(
      id: 4,
      title: 'Greek Salad',
      description:
          'Greek salad, also known as Horiatiki salad, is a traditional Mediterranean dish bursting with freshness and flavor, typically consisting of crisp lettuce leaves, juicy tomatoes, cucumbers, red onions, and vibrant bell peppers, all diced or sliced into bite-sized pieces.',
      image: 'greek_salad.jpg',
      ingredients: [
        'Lettuce leaves',
        'Tomatoes',
        'Cucumbers',
        'Red onions',
        'Bell peppers',
        'Feta cheese',
        'Kalamata olives',
        'Olive oil',
        'Red wine vinegar',
        'Dried oregano',
        'Salt',
        'Black pepper'
      ]),
  Recipe(
      id: 5,
      title: 'Drunken Noodles',
      description:
          'Drunken noodles, also known as Pad Kee Mao, is a popular Thai dish known for its bold flavors and spicy kick. Despite its name, the dish doesn\'t actually contain any alcohol rather the term drunken refers to the fact that it pairs well with alcoholic beverages.',
      image: 'drunken_noodles.jpg',
      ingredients: [
        'Wide rice noodles',
        'Chicken, beef, pork, shrimp, or tofu',
        'Garlic',
        'Thai chilies',
        'Bell peppers',
        'Thai basil leaves',
        'Fish sauce',
        'Soy sauce',
        'Oyster sauce',
        'Sugar',
        'Vegetable oil',
        'Lime wedges (for serving)'
      ]),
  Recipe(
      id: 6,
      title: 'Bánh hỏi heo quay',
      description:
          'Bánh hỏi heo quay is a Vietnamese dish featuring thin rice vermicelli noodles (bánh hỏi) served with slices of crispy roasted pork belly (heo quay). The noodles are delicate and absorbent, while the pork belly offers a satisfying crunch and rich flavor',
      image: 'bánh_hỏi_heo_quay.jpg',
      ingredients: [
        'Rice vermicelli noodles (bánh hỏi)',
        'Roasted pork belly (heo quay)',
        'Cucumber',
        'Lettuce',
        'Bean sprouts',
        'Mint leaves',
        'Fish sauce',
        'Sugar',
        'Lime',
        'Garlic',
        'Bird\'s eye chili'
      ]),
  Recipe(
      id: 7,
      title: 'Cheesecake',
      category: 'Dessert',
      description:
          'Bánh hỏi heo quay is a Vietnamese dish featuring thin rice vermicelli noodles (bánh hỏi) served with slices of crispy roasted pork belly (heo quay). The noodles are delicate and absorbent, while the pork belly offers a satisfying crunch and rich flavor',
      image: 'bánh_hỏi_heo_quay.jpg',
      ingredients: [
        'Rice vermicelli noodles (bánh hỏi)',
        'Roasted pork belly (heo quay)',
        'Cucumber',
        'Lettuce',
        'Bean sprouts',
        'Mint leaves',
        'Fish sauce',
        'Sugar',
        'Lime',
        'Garlic',
        'Bird\'s eye chili'
      ]),
];
