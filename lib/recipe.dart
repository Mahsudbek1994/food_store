class Recipe {
  String label;
  String imageUrl;
  int servings;
  List<Ingredient> ingredients;
// TODO: Add servings and ingredients here
  Recipe(
      this.label,
      this.imageUrl,
      this.servings,
      this.ingredients,
      );
  static List<Recipe> samples = [
  Recipe('Manti',
    'assets/manti.png',
  4,
    [
      Ingredient(1, 'box', 'Spaghetti',),
      Ingredient(4, '', 'Frozen Meatballs',),
      Ingredient(0.5, 'jar', 'sauce',),
    ],),
    Recipe(
        'Hot_Dog',
        'assets/photo-hot-dog-27146.png',
      2,
      [
        Ingredient(1, 'can', 'Tomato Soup',),
      ],),
    Recipe(
        'Palov',
        'assets/1555594277_osh-uzbk-palov-uzbek-osh-palov-1.png',
      1,
      [
        Ingredient(2, 'slices', 'Cheese',),
        Ingredient(2, 'slices', 'Bread',),
      ],),
    Recipe(
        'Somsa',
        'assets/samsa-uzbekskaya.png',
      24,
      [
        Ingredient(4, 'cups', 'flour',),
        Ingredient(2, 'cups', 'sugar',),
        Ingredient(0.5, 'cups', 'chocolate chips',),
      ],),
    Recipe(
        'Lagmon',
        'assets/unnamed.png',
      4,
      [
        Ingredient(4, 'oz', 'nachos',),
        Ingredient(3, 'oz', 'taco meat',),
        Ingredient(0.5, 'cup', 'cheese',),
        Ingredient(0.25, 'cup', 'chopped tomatoes',),
      ],),
    Recipe(
        'Shashlik',
        'assets/shashlik.png',
      4,
      [
        Ingredient(4, 'oz', 'nachos',),
        Ingredient(3, 'oz', 'taco meat',),
        Ingredient(0.5, 'cup', 'cheese',),
        Ingredient(0.25, 'cup', 'chopped tomatoes',),
      ],),
    Recipe(
        'Dimlama',
        'assets/scale_1200.png',
      8,
      [
        Ingredient(1, 'item', 'pizza',),
        Ingredient(1, 'cup', 'pineapple',),
        Ingredient(8, 'oz', 'ham',),
      ],
    ),
  ];
// TODO; Add List<Recipe> here
}
class Ingredient{
  double quantity;
  String measure;
  String name;

  Ingredient(
      this.quantity,
      this.measure,
      this.name,
      );
}
// TODO: Add Ingredient() here
