# NY_times

A NY_times project created in flutter 2.2.3 using Bloc as state management. NY_times supports both Android and IOS.

## Getting Started

This project responsible for getting most popular news from [ny_times API](https://developer.nytimes.com/apis) and viewing some details of each article.

## How to Use

**Step 1:**

Sign up for [ny_times API](https://developer.nytimes.com/apis) if you don't have previous one:

**Step 2:**

Create a new app and get the key.

**Step 3:**

Download or clone this repo by using the link below:

```
https://github.com/mohamd34/NY_times.git
```

**Step 4:**

Go to project root and execute the following command in console to get the required dependencies:

```
flutter pub get
```

**Step 5:**

You have to put the **API_KEY** that you got it from ** step 1 ** inside lib/data/Networking.dart file with constant **API_KEY**

## NY_times Features:


* Getting Most popular news from last 7 days
* Show news details
* View the whole article/magazine in mobile browser

### Libraries & Tools Used

* [Dio](https://github.com/flutterchina/dio)
* [Bloc](https://github.com/felangel/bloc/tree/master/packages/flutter_bloc) (to connect the reactive data of your application with the UI)
* [Url launcher](https://github.com/flutter/plugins/tree/main/packages/url_launcher/url_launcher)

### Folder Structure (MVC)

Here is the folder structure I have been using in this project

```
lib/
|- bloc/
|- data/
|- router/
|- ui/
|- utils/
|- widgets/
|- main.dart
```

### Bloc

All the business logic of your application will go into this directory.

### Data

it represents the data layer of your application. It can sub-divided into two directories model and data_provider, data_provider contains  `networking`. Since each layer exists independently, that makes it easier to unit test.

### Router

Contains all the routes for your application.

### Utils

Contains the common file(s) and utilities used in a project.

### Widgets

Contains the common widgets that are shared across multiple screens. For example, Button, TextField etc.
