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
          'Cheesecake is a dessert made with a soft fresh cheese (typically cottage cheese, cream cheese, quark or ricotta), eggs, and sugar. It may have a crust or base made from crushed cookies (or digestive biscuits), graham crackers, pastry, or sometimes sponge cake.',
      image: 'dessert.jpg',
      ingredients: [
        
          '1½ cups graham cracker crumbs',
          '5 tablespoons unsalted butter, melted',
          '2 tablespoons sugar',
          '⅛ teaspoon salt',
          '32 oz (four 8-oz blocks) cream cheese, at room temperature',
          '2 cups sugar',
          '3 tablespoons all-purpose flour',
          '4 teaspoons vanilla extract',
          '1 teaspoon packed lemon zest (from 1 lemon)',
          '2 teaspoons fresh lemon juice (from 1 lemon)',
          '¼ teaspoon salt',
          '6 large eggs',
          '½ cup sour cream',
      ]),
  Recipe(
      id: 8,
      title: 'Chocolate Chip Cookies',
      category: 'Dessert',
      description:
          'These classic chocolate chip cookies boast a perfect balance of crisp edges and chewy centers, with pockets of melted chocolate in every bite. Baked to golden perfection, they offer a nostalgic taste of home that\'s impossible to resist.',
      image: 'cookie.jpg',
      ingredients: [
        
          '1 cup (2 sticks) unsalted butter, softened',
          '1 cup granulated sugar',
          '1 cup packed light brown sugar',
          '2 large eggs',
          '1 teaspoon vanilla extract',
          '3 cups all-purpose flour',
          '3 tablespoons all-purpose flour',
          '1 teaspoon baking soda',
          '1/2 teaspoon salt',
          '2 cups semisweet chocolate chips',
          '¼ teaspoon salt',
          '6 large eggs',
          '½ cup sour cream',
      ]),
  Recipe(
      id: 9,
      title: 'Homemade Vanilla Ice Cream',
      category: 'Dessert',
      description:
          'This creamy and indulgent vanilla ice cream is made from scratch with just a few simple ingredients.',
      image: 'ice_cream.jpg',
      ingredients: [
        
          '2 cups heavy cream',
          '1 cup whole milk',
          '3/4 cup granulated sugar',
          'Pinch of salt',
          '2 teaspoons pure vanilla extract',
      ]),
  Recipe(
      id: 10,
      title: 'Apple Pie',
      category: 'Dessert',
      description:
          'Savor the flavors of fall with this comforting apple pie featuring a flaky pastry crust and sweet apple filling.',
      image: 'pie.jpg',
      ingredients: [
        
          '1 double pie crust (store-bought or homemade)',
          '6 cups peeled and sliced apples',
          '3/4 cup granulated sugar',
          '2 tablespoons all-purpose flour',
          '1 teaspoon ground cinnamon',
          '¼ teaspoon ground nutmeg',
          '2 tablespoons unsalted butter',
      ]),
  Recipe(
      id: 11,
      title: 'Tiramisu',
      category: 'Dessert',
      description:
          'Tiramisu is an Italian dessert made of ladyfinger pastries (savoiardi) dipped in coffee, layered with a whipped mixture of eggs, sugar and mascarpone and flavoured with cocoa. ',
      image: 'Tiramisu.jpg',
      ingredients: [
        
          '2 (3 ounce) packages ladyfinger cookies',
          '¼ cup strong brewed coffee, at room temperature',
          '1 pound mascarpone cheese, at room temperature',
          '6 large egg yolks',
          '¾ cup white sugar',
          '1 tablespoon unsweetened cocoa powder',
          '⅔ cup milk',
          '1 ¼ cups heavy cream',
          '½ teaspoon vanilla extract',
          '2 tablespoons rum (optional)',
      ]),
  Recipe(
      id: 12,
      title: 'Baklava',
      category: 'Dessert',
      description:
          'Baklava is a layered dessert made of filo pastry sheets, filled with chopped nuts, and sweetened with syrup or honey.',
      image: 'Baklava.jpg',
      ingredients: [
        
          '6 oz shelled pistachios, coarsely chopped',
          '6 oz walnuts, coarsely chopped',
          '6 oz hazelnuts, coarsely chopped ',
          '¼ cup sugar',
          '1 to 2 tablespoon ground cinnamon (start with less if you\'re not sure)',
          'large pinch of ground cloves ',
          '16-oz package phyllo dough, thawed',
          '1 ½ to 2 sticks of unsalted butter (up to 16 tbsp), melted',
          '¾ cup sugar',
          '1 cup cold water',
          '1 cup honey',
          '1 tbsp orange extract (optional)',
          '5 whole cloves',
          '1 lemon, juice of',
      ]),
  Recipe(
      id: 13,
      title: 'Vanilla Milkshake',
      category: 'Drinks',
      description:
          'A vanilla milkshake is a lusciously creamy beverage made by blending vanilla ice cream, milk, and vanilla extract. It\'s a timeless treat that offers a perfect balance of sweetness and rich vanilla flavor, ideal for satisfying dessert cravings or cooling off on a hot day.',
      image: 'v_milkshake.jpg',
      ingredients: [
        
          '1 1/2 cup vanilla ice cream',
          '1/4 cup milk',
          'Whipped topping, for garnish',
          'Maraschino cherry, for garnish',
          'Sprinkles, for garnish',
      ]),
  Recipe(
      id: 14,
      title: 'Caribbean Dream Smoothie',
      category: 'Drinks',
      description:
          'The Caribbean Dream Smoothie is a tropical delight, blending bananas, mangoes, pineapples, and coconut milk into a creamy, refreshing concoction. With its vibrant flavors and velvety texture, it\'s the perfect sip to transport you to island paradise in just one taste.',
      image: 'c_smoothie.jpg',
      ingredients: [
        
          'Blend 1/2 cup pineapple chunks',
          '1/4 cup 2% Greek yogurt',
          '1/4 cup refrigerated unsweetened coconut milk',
          '1/4 cup orange juice',
          '1/4 large banana',
          'handful of ice cubes until smooth',
      ]),
  Recipe(
      id: 15,
      title: 'Strawberry Smoothie',
      category: 'Drinks',
      description:
          'strawberries with creamy yogurt for a refreshing treat. Perfect for a quick breakfast or a midday pick-me-up, this smoothie offers a burst of fruity flavor in every sip.',
      image: 's_smoothie.jpg',
      ingredients: [
        
          '1 cup low fat milk (or juice)',
          '1/2 cup strawberry Greek yogurt',
          '1 frozen banana cut in chunks',
          '1 1/2 cups fresh or frozen strawberries',
      ]),
  Recipe(
      id: 16,
      title: 'Chai Latte',
      category: 'Drinks',
      description:
          'The chai latte is hot, milky, fragrant, gently spicy, and popular in cafés everywhere. However, despite the fact that it\'s served in coffee shops and named after the latte, it actually contains no coffee whatsoever. ',
      image: 'c_latte.jpg',
      ingredients: [
        '6 cardamom pods',
        '2 cinnamon sticks',
        '1 star anise',
        '2 tsp. whole cloves',
        '1 tsp. black peppercorns',
        '1 (1") piece fresh ginger, thinly sliced',
        '1/3 cup packed brown sugar',
        '4 cup water',
        '6 black tea bags',
        '4 cup whole milk',
        'Ground cinnamon, for garnish',
        'Ground cardamom, for garnish',
      ]),
  Recipe(
      id: 17,
      title: 'Caramel Latte',
      category: 'Drinks',
      description:
          'strawberries with creamy yogurt for a refreshing treat. Perfect for a quick breakfast or a midday pick-me-up, this smoothie offers a burst of fruity flavor in every sip.',
      image: 'ca_latte.jpg',
      ingredients: [
        '3 cups whole milk',
        '2 tablespoons of instant coffee',
        '2 tablespoons brown sugar',
        '1 teaspoon vanilla extract',
        '1 teaspoon caramel extract',
        'Reddi wip optional',
        'Caramel Ice Cream Toppings optional',
      ]),
  Recipe(
      id: 18,
      title: 'Cookie & Cream milkshake',
      category: 'Drinks',
      description:
          'A Cookies and Cream Milkshake is a creamy indulgence blending together rich vanilla ice cream with crumbled chocolate cookies, resulting in a delightful blend of sweet and chocolaty flavors. This classic treat offers a satisfying crunch amidst its velvety texture, providing a nostalgic and irresistible dessert experience.',
      image: 'c_milkshake.jpg',
      ingredients: [
        '4 to 6 cookies',
        '1/4 cup whole milk, more to taste',
        '1 1/2 to 2 cups ice cream (about 3 large scoops), softened',
      ]),
  Recipe(
      id: 19,
      title: 'Indian Butter Chicken Curry',
      category: 'Curry',
      description:
          'A classic Indian dish featuring tender pieces of chicken cooked in a rich and creamy tomato-based sauce, flavored with butter, cream, and a blend of aromatic spices like garam masala, cumin, and coriander.',
      image: 'curry.jpg',
      ingredients: [
        '1 kg (2lbs) Chicken Breasts',
        '1 cup Greek Yogurt',
        '2 tbsp Garam Masala',
        '2 ysp Ground Cardamom',
        '2 tsp Coriander',
        '2 tsp Cumin',
        'Turmeric',
        'Chilli Powder',
        '1 tsp Salt',
        'Salt & Black Pepper for taste',
        '3 tbsp Oil',
        '4 tbsp Butter',
        '2 Onions',
        '6 Fresh Garlic Cloves',
        'Fresh Ginger',
        '800 g (28oz) canned tomatoes',
        '1 cup Heavy Cream',
      ]),
  Recipe(
      id: 20,
      title: 'Thai Green Chicken Curry',
      category: 'Curry',
      description:
          'A fragrant Thai curry made with tender chicken, coconut milk, green curry paste, and an array of vegetables like eggplant, and snow peas. It\'s aromatic, slightly spicy, and bursting with flavors.',
      image: 't_curry.jpg',
      ingredients: [
        '2 tbsp vegetable oil',
        '400 g/14oz coconut milk',
        '1 cup (250ml) chicken or vegetable broth',
        '350 g/12 oz chicken thigh',
        '2 Japanese eggplants',
        '1 1/2 cups snow peas ',
        '1 - 3 tsp fish sauce',
        '6 kaffir lime leaves',
        '16 Thai basil leaves',
        'Juice of 1/2 lime ',
        '1/8 tsp salt',
        '1 - 3 tsp white sugar',
      ]),
  Recipe(
      id: 21,
      title: 'Japanese Chicken Katsu Curry',
      category: 'Curry',
      description:
          'A Japanese-style curry dish featuring crispy breaded chicken cutlets served with a thick and savory curry sauce, typically made with onions, carrots, and potatoes, seasoned with curry powder and soy sauce.',
      image: 'j_curry.jpg',
      ingredients: [
        '300 g boneless chicken thigh',
        '1 pinch salt and pepper',
        '1 tbsp unsalted butter',
        '1 yellow onion(s)',
        '2 potato(s)',
        '1 carrot(s)',
        '4 servings worth curry roux',
        '600 ml water if using premade curry cubes, check box for water quantity',
        '1 tbsp tsuyu sauce',
        '½ tbsp honey',
        '1 tbsp sake',
        '1 pinch chili powder optional',
        '½ tsp fenugreek powder',
        '1 tsp tomato ketchup',
        'cooking oil for deep frying',
        '2 large chicken breast',
        '2 pinches salt and pepper',
        '6 tbsp cake flour',
        '100 ml water,',
        '2 medium egg(s)',
        '50 g panko breadcrumbs',
        '4 tbsp grated parmesan cheese',
      ]),
  Recipe(
      id: 22,
      title: 'Sri Lankan Coconut Fish Curry',
      category: 'Curry',
      description:
          'A Sri Lankan delicacy consisting of fish fillets cooked in a flavorful coconut milk-based curry, infused with spices like turmeric, fenugreek, and cinnamon, along with curry leaves and pandan leaves for added aroma.',
      image: 's_curry.jpg',
      ingredients: [
        '450 - 500 g swordfish or tuna ',
        '1 tsp sea salt',
        '¼ tsp turmeric powder',
        '1 tsp Sri Lankan curry powder roasted or unroasted',
        '½ tsp ground black pepper',
        '½ tsp cayenne pepper or kashmiri chili powder',
        '½ medium onion sliced or diced',
        '1 inch piece of ginger minced',
        '10 curry leaves',
        '2 green chili or jalapeno (split lengthwise)',
        '2 tsp Sri Lankan curry powder',
        '½ tsp ground cardamom',
        '½ tsp ground cumin',
        '¾ tbsp ground black pepper',
        '¾ tbsp cayenne pepper or kashmiri chili powder',
        '1 stick of cinnamon about 3 inches',
        '1 tsp tamarind concentrate more if you\'re using regular tamarind paste',
        '2 cups coconut milk preferably full fat coconut milk',
        'Salt to taste',
      ]),
  Recipe(
      id: 23,
      title: 'Thai Massaman Beef Curry',
      category: 'Curry',
      description:
          'A hearty and aromatic Thai curry made with tender chunks of beef, potatoes, and peanuts, simmered in a rich and flavorful curry sauce flavored with massaman curry paste, coconut milk, tamarind, and cinnamon.',
      image: 'thai_curry.jpg',
      ingredients: [
        '2 lb bone-in beef short ribs',
        '2 ½ cup coconut milk',
        'Half recipe of massaman curry paste or 5-6 tablespoon store-bought paste',
        'Water, as needed',
        '2-3 tablespoon fish sauce',
        '3 Tbsp palm sugar, chopped',
        '2 Tbsp tamarind juice (a.k.a. tamarind concentrate or tamarind paste)',
        '1 large white-flesh sweet potato, cut into big chunks',
        '½ a large onion, cut into ½-inch strips',
        '¼ cup roasted peanuts',
        'Jasmine rice for serving',
      ]),
  Recipe(
      id: 24,
      title: 'Vegetarian Chickpea and Spinach Curry',
      category: 'Curry',
      description:
          'A nutritious and delicious vegetarian curry featuring chickpeas and spinach cooked in a fragrant sauce made from onions, tomatoes, ginger, garlic, and a blend of spices like cumin, coriander, and turmeric. It\'s hearty, wholesome, and packed with flavor.',
      image: 'veg_curry.jpg',
      ingredients: [
        '3 tbsp sunflower or canola oil',
        '1 large onion finely chopped',
        '4 cloves garlic, crushed',
        '1 inch ginger, finely grated',
        '1 tbsp ground coriander',
        '1/2 tbsp ground turmeric',
        '1/2 tbsp ground cumin',
        '1/4 - 1/2 tsp cayenne pepper or chili flakes',
        '1.5 cups crushed tomatoes (400g)',
        '2.5 cups cooked chickpeas (400g)',
        '1/2 cup vegetable stock (120 ml)',
        '1 cup frozen chopped spinach or 100gm fresh/frozen chopped spinach',
        '1/2 - 1 tsp salt',
        '1 tsp sugar',
        '1 tsp garam masala',
        '1 tbsp lemon juice',
        'OPTIONAL: 1/4-1/2 cup full-fat coconut milk (50-100 ml)',
        '1 tbsp chopped fresh cilantro leaves (coriander leaves)'
      ]),
];
