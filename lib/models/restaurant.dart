import 'package:flutter/cupertino.dart';
import 'package:food_delivery_app/models/food.dart';

class Restaurant extends ChangeNotifier{
  final List<Food> _menu = [

    // 🍔 BURGERS
    Food(
      name: "Classic Cheeseburger",
      description: "Juicy beef patty with cheese",
      imagePath: 'lib/images/burgers/burger1.jpeg',
      price: 8.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Cheese", price: 0.99),
        Addon(name: "Bacon", price: 1.49),
        Addon(name: "Avocado", price: 1.99),
      ],
    ),
    Food(
      name: "Double Beef Burger",
      description: "Two beef patties stacked high",
      imagePath: 'lib/images/burgers/burger2.jpeg',
      price: 10.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Patty", price: 2.99),
        Addon(name: "Cheese", price: 0.99),
      ],
    ),
    Food(
      name: "Chicken Burger",
      description: "Crispy chicken fillet burger",
      imagePath: 'lib/images/burgers/burger3.png',
      price: 7.99,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Spicy Sauce", price: 0.79),
        Addon(name: "Cheese", price: 0.99),
      ],
    ),
    Food(
      name: "Veggie Burger",
      description: "Plant-based veggie patty",
      imagePath: 'lib/images/burgers/burger4.jpeg',
      price: 7.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Extra Veggies", price: 0.99),
        Addon(name: "Avocado", price: 1.49),
      ],
    ),
    Food(
      name: "BBQ Burger",
      description: "Smoky BBQ sauce burger",
      imagePath: 'lib/images/burgers/burger5.png',
      price: 9.49,
      category: FoodCategory.burgers,
      availableAddons: [
        Addon(name: "Onion Rings", price: 1.29),
        Addon(name: "Bacon", price: 1.49),
      ],
    ),

    // 🍰 DESSERTS
    Food(
      name: "Chocolate Cake",
      description: "Rich chocolate layered cake",
      imagePath: 'lib/images/desserts/dessert1.jpg',
      price: 4.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Extra Chocolate", price: 0.99),
      ],
    ),
    Food(
      name: "Cheesecake",
      description: "Classic creamy cheesecake",
      imagePath: 'lib/images/desserts/dessert2.png',
      price: 5.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Strawberry Topping", price: 0.79),
      ],
    ),
    Food(
      name: "Ice Cream Sundae",
      description: "Vanilla ice cream with toppings",
      imagePath: 'lib/images/desserts/dessert3.jpeg',
      price: 3.99,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Sprinkles", price: 0.49),
        Addon(name: "Chocolate Syrup", price: 0.59),
      ],
    ),
    Food(
      name: "Brownie",
      description: "Warm chocolate brownie",
      imagePath: 'lib/images/desserts/dessert4.jpeg',
      price: 3.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Ice Cream Scoop", price: 0.99),
      ],
    ),
    Food(
      name: "Apple Pie",
      description: "Classic apple pie slice",
      imagePath: 'lib/images/desserts/dessert5.jpeg',
      price: 4.49,
      category: FoodCategory.desserts,
      availableAddons: [
        Addon(name: "Whipped Cream", price: 0.59),
      ],
    ),

    // 🥤 DRINKS
    Food(
      name: "Cola",
      description: "Chilled soft drink",
      imagePath: 'lib/images/drinks/drinks1.png',
      price: 1.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Large Size", price: 0.99),
      ],
    ),
    Food(
      name: "Orange Juice",
      description: "Fresh orange juice",
      imagePath: 'lib/images/drinks/drinks2.jpeg',
      price: 2.49,
      category: FoodCategory.drinks,
      availableAddons: [],
    ),
    Food(
      name: "Milkshake",
      description: "Creamy vanilla milkshake",
      imagePath: 'lib/images/drinks/drinks3.jpeg',
      price: 3.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Chocolate Flavor", price: 0.99),
      ],
    ),
    Food(
      name: "Iced Coffee",
      description: "Cold brewed coffee",
      imagePath: 'lib/images/drinks/drinks4.jpeg',
      price: 2.99,
      category: FoodCategory.drinks,
      availableAddons: [
        Addon(name: "Extra Shot", price: 0.79),
      ],
    ),
    Food(
      name: "Water",
      description: "Bottled mineral water",
      imagePath: 'lib/images/drinks/drinks5.jpeg',
      price: 0.99,
      category: FoodCategory.drinks,
      availableAddons: [],
    ),

    // 🍟 SIDES
    Food(
      name: "French Fries",
      description: "Crispy golden fries",
      imagePath: 'lib/images/sides/sides1.jpeg',
      price: 2.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Cheese Sauce", price: 0.79),
      ],
    ),
    Food(
      name: "Onion Rings",
      description: "Crunchy onion rings",
      imagePath: 'lib/images/sides/sides2.jpeg',
      price: 3.49,
      category: FoodCategory.sides,
      availableAddons: [],
    ),
    Food(
      name: "Mozzarella Sticks",
      description: "Cheesy mozzarella sticks",
      imagePath: 'lib/images/sides/sides3.jpg',
      price: 4.49,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "Marinara Sauce", price: 0.59),
      ],
    ),
    Food(
      name: "Chicken Nuggets",
      description: "Crispy chicken nuggets",
      imagePath: 'lib/images/sides/sides4.png',
      price: 4.99,
      category: FoodCategory.sides,
      availableAddons: [
        Addon(name: "BBQ Sauce", price: 0.49),
      ],
    ),
    Food(
      name: "Coleslaw",
      description: "Fresh creamy coleslaw",
      imagePath: 'lib/images/sides/sides5.png',
      price: 2.49,
      category: FoodCategory.sides,
      availableAddons: [],
    ),

    // 🥗 SALADS
    Food(
      name: "Caesar Salad",
      description: "Classic Caesar salad",
      imagePath: 'lib/images/salads/salad1.jpeg',
      price: 5.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Grilled Chicken", price: 2.49),
      ],
    ),
    Food(
      name: "Greek Salad",
      description: "Fresh veggies with feta",
      imagePath: 'lib/images/salads/salad2.jpeg',
      price: 5.49,
      category: FoodCategory.salads,
      availableAddons: [],
    ),
    Food(
      name: "Garden Salad",
      description: "Mixed greens and vegetables",
      imagePath: 'lib/images/salads/salad3.jpeg',
      price: 4.99,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Extra Dressing", price: 0.49),
      ],
    ),
    Food(
      name: "Chicken Salad",
      description: "Grilled chicken with greens",
      imagePath: 'lib/images/salads/salad4.jpeg',
      price: 6.49,
      category: FoodCategory.salads,
      availableAddons: [
        Addon(name: "Avocado", price: 1.49),
      ],
    ),
    Food(
      name: "Tuna Salad",
      description: "Protein-packed tuna salad",
      imagePath: 'lib/images/salads/salad5.jpeg',
      price: 6.99,
      category: FoodCategory.salads,
      availableAddons: [],
    ),
  ];

  List<Food> get menu => _menu;
}
