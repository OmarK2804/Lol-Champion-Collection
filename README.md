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

## Assignment 9

### • Can we retrieve JSON data without creating a model first? If yes, is it better than creating a model before retrieving JSON data?

Yes we can. It is better to create a model before retrieving JSON data if we want the data to be well-structured and we plan to store it in a relational database because model provide a convenient way to interact with the database, and we can perform queries, filtering, and other operations easily.

### • Explain the function of CookieRequest and explain why a CookieRequest instance needs to be shared with all components in a Flutter application.

CookieRequest is an instance that is used to manage cookies for HTTP requests. It allows developers to store, retrieve, and modify cookies associated with a particular URL. Sharing a CookieRequest instance across all components in a Flutter application ensures that cookies are consistently handled and maintained throughout the app.

### • Explain the mechanism of fetching data from JSON until it can be displayed on Flutter.

First we need to make a request to the server to fetch the JSON data. Flutter provides the http package, which you can use to make HTTP requests. Then, use the http package to send an HTTP request to the server. The server will respond with the JSON data. Once we have the response from the server, we need to decode the JSON data. Dart provides the dart:convert library for working with JSON. After that, create Dart classes to model the structure of the data. This makes it easier to work with and understand the data. Then, use the model class to convert the decoded JSON data into Dart objects. Then we can display the data of Dart objects into a flutter widgets.

### • Explain the authentication mechanism from entering account data on Flutter to Django authentication completion and the display of menus on Flutter

First, the Flutter must provides UI elements to collect user username and password through forms. When a user enters their username and password,Flutter sends a registration or authentication request to the Django backend. We use the http package in Flutter to send a POST request to a Django endpoint responsible for user registration or authentication. We included the user's credentials in the request body typically in JSON format. In Django, handle the registration or authentication logic. If authentication is successful, Django typically generates an authentication token. This token will return in the response to Flutter. Then, Flutter can display menus or screens based on the authentication state.

### • List all the widgets you used in this assignment and explain their respective functions.

1) ListView
: Used to display a list of data in a scrollable list layout.   

2) TextFormField
: Used to capture user input, such as text or numbers, and automatically handles common input-related tasks like validation and formatting.

3) Container
: Used to contain other widgets and provides properties for alignment, padding, margin, and decoration. 

4) FutureBuilder
: Used to simplifies the process of working with futures. In Flutter, a future is an object representing a potential value or error that will be available at some time in the future. The typical use case for FutureBuilder is when you need to fetch data asynchronously and update the UI when the data is available.

5) ElevatedButton
: Is a type of button that is elevated above the surface of the material. It is typically used to represent a primary action in an application, such as submitting a form or initiating a critical action.

### • Explain how you implement the checklist above step by step! (not just following the tutorial).

First, I wanted to set up authentication in django for flutter. So, I create a new app called 'authentication' in my django project. After adding the url in 'urls.py' and also the name of the app in 'settings.py' in the django project, I installed the required library (corsheaders). I also add 'corsheaders' to 'INSTALLED_APPS' and 'corsheaders.middleware.CorsMiddleware' to 'MIDDLEWARE' in 'settings.py' in the django project. Then, I Add the necessary variables to the 'settings.py' in the django project. Then in the new app, I create a login and logout function to handle the registration or authentication logic. I also import and add the url in 'urls.py' of authentication app. After that, I install the necessary package in the flutter application. To use the package, I need to modify the root widget in 'main.dart' to provide the CookieRequest library to all child widgets using Provider. This will create a new Provider object that will share an instance of CookieRequest with all components in the flutter application. Then, I create a new file in the screens folder named 'login.dart'. I fill the file with codes to collect user username and password and send a registration or authentication request to the Django authentication login url. Then, I set the home page as login page in 'main.dart'. 

Then, to display the data in the flutter app, I need to create a model based on the model in the django project. I use Quicktype to make a code that decode JSON data from the django project into dart. Then, I create a new file called 'product.dart' in a new folder named 'models' and fill it with the code from Quicktype and create Dart classes to model the structure of the data. This makes it easier to work with and understand the data. To fetch the data from the django project, I add the http package and modify the 'AndroidManifest.xml' so the flutter app to access the internet. Then I create a new file in the screens folder named 'list_product.dart'. I fill the file with code to display the product using 'ListView' widget and make the instances of the data as a button that if pushed, will be directed to a new file in the screens folder named 'detail_product.dart' that display the detail of the data. Then I add the 'list_product.dart' in the widgets 'left_drawer.dart'. Then I modify the buttons in 'shop_card.dart' so when pressed, it will directed to 'list_product.dart' if view champions is clicked and 'login.dart' if logout is clicked.

Then, to integrate flutter form with the django service, I create a new function called 'create_product_flutter' in the main app in the django project. I also import and add the url of the fucntion in 'urls.py' in main app. After that, I change the logic of the button in 'shoplist_form.dart' so it send request to Django main url new function and wait for the response. I also connect the necessary page to CookieRequest.