import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class BottomNav extends StatelessWidget {
  const BottomNav({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      backgroundColor: Colors.deepOrangeAccent[400],
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Feather.home, color: Colors.white),
          title: Text(
            'Home',
            style: Theme.of(context)
                .textTheme
                .bodyText1
                .copyWith(color: Colors.white),
          ),
        ),
        BottomNavigationBarItem(
            icon: Icon(Feather.heart, color: Colors.white),
            title: Text(
              "Favorites",
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  .copyWith(color: Colors.white),
            )),
        BottomNavigationBarItem(
            icon: Icon(
              Feather.credit_card,
              color: Colors.white,
            ),
            title: Text(
              'My Orders',
              style: Theme.of(context)
                  .textTheme
                  .bodyText1
                  .copyWith(color: Colors.white),
            )),
      ],
      selectedItemColor: Colors.grey[400],
    );
  }
}
