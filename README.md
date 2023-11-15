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

## Assignment 8

### • Explain the difference between Navigator.push() and Navigator.pushReplacement(), accompanied by examples of the correct usage of both methods!

The push() method adds a route to the route stack managed by Navigator. This method causes the added route to be at the top of the stack, so that the newly added route will appear and be displayed to the user. while the pushReplacement() method removes the currently displayed route and replaces it with a new route. This method causes the application to transition from the currently displayed route to the provided route. In the managed route stack by the Navigator, the old route at the top of the stack is directly replaced by the new route without altering the state of the stack elements beneath it.

Although push() and pushReplacement() may seem similar , the key difference lies in what they do to the route at the top of the stack. push() adds a new route on top of the existing routes, while pushReplacement() replaces the existing route at the top of the stack with the new route. It's important to consider the order and contents of the stack because if the stack is empty, and you press the Back button on the device, the system will exit the application.

### • Explain each layout widget in Flutter and their respective usage contexts!

1) Container
: Used to contain other widgets and provides properties for alignment, padding, margin, and decoration. 

2) Row and Column
: Used to arrange widgets in a horizontal (row) or vertical (column) line.

3) ListView
: Used for displaying a scrollable list of widgets.

4) Stack
: Used to overlay widgets on top of each other.

5) Expanded and Flexible
: Used in combination with Row or Column to distribute space among the children.


### • List the form input elements you used in this assignment and explain why you used these input elements!

I use 'TextFormField'. It is used to capture user input, such as text or numbers, and automatically handles common input-related tasks like validation and formatting.

### • How is clean architecture implemented in a Flutter application?

Clean Architecture implemented typically by organizing your code into layers, each with its own specific responsibilities.

### • Explain how you implemented the checklist above step-by-step! (not just following the tutorial)

First, I try to add a menu drawer for navigation by creating a file named 'left_drawer.dart'. I import the necessary pages and filled it with a drawer header and body. I also add the routing for the imported pages. Next, I try to add a forms and input elements by creating a file named 'shoplist_form.dart'. It is used as a simple form to enter item data into the application. Then I add a Form widget that serves as a container for several input field widgets that we will create later. Then, I create a new variable named _formKey and add it to the key attribute of the Form widget. The key attribute serves as the handler for form state, form validation, and form storage. Then, I add the input fields to the Form widget. Then, I add a button to save the item. After that, I try to display the data by add the showDialog() function inside the onPressed() section of the button and display an AlertDialog widget in this function. I also add a function to reset the form. Then, I add a navigation to the three buttons from the main page so that when pressed, the user will be shown other pages. At last, I try to move the pages I've created so far into screens and widgets folder to make things easier in the future.