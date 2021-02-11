import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';
import 'package:mini_project_1/drawer.dart';
import 'package:mini_project_1/bottomnav.dart';
import 'package:mini_project_1/foodgrid.dart';

void main() {
  runApp(MyApp());
}

final List<Map> fastFood = [
  {"link": "images/burger.jpg", "title": "Burger", "price": "RWF 4000"},
  {"link": "images/pizza.jpg", "title": "Pizza", "price": "RWF 4000"},
  {"link": "images/ribs.jpg", "title": "Ribs", "price": "RWF 5000"},
  {
    "link": "images/friedchicken.jpg",
    "title": "Fried Chicken",
    "price": "RWF 3500"
  },
];
final List<Map> drinks = [
  {"link": "images/cocktail.jpg", "title": "Cocktail", "price": "RWF 4000"},
  {"link": "images/milkshake.jpg", "title": "Milkshake", "price": "RWF 3500"},
  {"link": "images/smoothie.jpg", "title": "Smoothie", "price": "RWF 2500"},
];
final List<Map> vegeterian = [
  {"link": "images/salad.jpg", "title": "Salad", "price": "RWF 2500"},
  {"link": "images/salad2.jpg", "title": "Salad", "price": "RWF 2500"},
  {"link": "images/salad3.jpg", "title": "Salad", "price": "RWF 2500"},
  {"link": "images/soup.jpg", "title": "Soup", "price": "RWF 3500"},
];

List<Map> category;

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Snack Time',
      theme: ThemeData(
        textTheme: TextTheme(
            headline1: TextStyle(
                color: Colors.black,
                fontFamily: "Garamond",
                fontSize: 19.0,
                fontWeight: FontWeight.w600),
            bodyText1: TextStyle(
                color: Colors.black,
                fontFamily: "OpenSans",
                fontSize: 14.0,
                fontWeight: FontWeight.w400),
            caption: TextStyle(
                color: Colors.black,
                fontFamily: "OpenSans",
                fontSize: 12.0,
                fontWeight: FontWeight.w300)),
        // primaryColor: Colors.black87,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      drawer: AppDrawer(),
      appBar: AppBar(
        backgroundColor: Colors.deepOrangeAccent[400],
        title: Padding(
          padding: const EdgeInsets.fromLTRB(50.0, 0, 0, 0),
          child: Text(
            "Snack Time",
            style: TextStyle(
              fontFamily: "Garamond",
              fontSize: 24,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 0, 16.0, 0),
            child: Icon(Feather.search),
          ),
        ],
      ),
      body: AppBody(),
      bottomNavigationBar: BottomNav(),
    );
  }
}

class AppBody extends StatefulWidget {
  @override
  _AppBodyState createState() => _AppBodyState();
}

class _AppBodyState extends State<AppBody> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            "Categories",
            style: Theme.of(context).textTheme.headline1,
            textAlign: TextAlign.start,
          ),
        ),
        SizedBox(
          height: 120,
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: [
              GestureDetector(
                  onTap: () {
                    setState() {
                      category = fastFood;
                    }
                  },
                  child: CategoryCard(
                      link: "images/hamburger.png", title: "Fast Food")),
              GestureDetector(
                onTap: () {
                  setState() {
                    category = vegeterian;
                  }
                },
                child: CategoryCard(
                  link: "images/plant.png",
                  title: "Vegeterian",
                ),
              ),
              GestureDetector(
                onTap: () {
                  setState() {
                    category = drinks;
                  }
                },
                child: CategoryCard(
                  link: "images/orange-juice.png",
                  title: "Drinks",
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child:
              Text("Fast Food", style: Theme.of(context).textTheme.headline1),
        ),
        FoodView(type: fastFood),
      ],
    );
  }
}

class CategoryCard extends StatelessWidget {
  const CategoryCard({Key key, @required this.link, @required this.title})
      : super(key: key);
  final String link;
  final String title;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Container(
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30),
        ),
        width: 100,
        height: 80,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                link,
                height: 40,
              ),
              Text(title),
            ],
          ),
        ),
      ),
    );
  }
}
