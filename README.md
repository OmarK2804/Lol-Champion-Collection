## Assignment 7

### • What are the main differences between stateless and stateful widget in Flutter?

Stateless widgets are used for static content like labels, icons, buttons, or simple information that doesn't change based on user interactions. They are efficient for scenarios where the widget's appearance doesn't need to change over time. While stateful widgets are used for parts of the UI that need to respond (manage and update) to user interactions such as handling user input, form validation and also to maintain dynamic state.

### • Explain all widgets that you used in this assignment.

1) MyApp
: A stateless widget for the root of the application. Use the widget build method.

2) MyHomePage
: A stateless widget for the home page of the application. It holds the values (in this case the title) provided by the parent (in this case the App widget). Use the widget build method.

3) ShopCard
: A stateless widget to display the card. Use the widget build method.

### • Explain how you implemented the checklist above step-by-step (not just following the tutorial).

First, I create a new flutter project with the name 'lol_champion_collection' and push it to a new github repository with the same name as the flutter project. Then I create a new file named 'menu.dart' in the 'lol_champion_collection/lib' directory and import 'package:flutter/material.dart'. Then I remove the 'MyHomePageState' class from 'main.dart' and move the 'MyHomePage' class from 'main.dart' to 'menu.dart'. Then I import 'package:shopping_list/menu.dart' in 'main.dart' so it can recognize 'MyHomePage' class in 'menu.dart'. Then, I change the application theme color to indigo. After that, I change all the class widget state from stateful to stateless. Then to add text and cards, I create a new class named 'ShopItem' that define the types of items. I also add a list of the 'ShopItem' class item in 'MyHomePage' class. Then I create a new class named 'ShopCard' which is a stateless widget to display the card.