import 'package:flutter/material.dart';
import 'package:flutter_icons/flutter_icons.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Container(
        color: Colors.deepOrangeAccent[400],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              height: 100,
              child: Center(
                child: Card(
                  child: ListTile(
                    title: Text(
                      "MENU",
                      textAlign: TextAlign.center,
                      style: Theme.of(context).textTheme.bodyText1.copyWith(
                            color: Colors.deepOrangeAccent[400],
                            fontWeight: FontWeight.w700,
                            fontSize: 18,
                          ),
                    ),
                  ),
                ),
              ),
            ),
            Center(
              child: Card(
                child: ListTile(
                  leading: Icon(Feather.settings),
                  title: Text(
                    "Settings",
                    style: Theme.of(context)
                        .textTheme
                        .bodyText1
                        .copyWith(fontWeight: FontWeight.w500),
                  ),
                ),
              ),
            ),
            Center(
              child: Card(
                child: ListTile(
                  leading: Icon(Feather.user),
                  title: Text("Profile",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          .copyWith(fontWeight: FontWeight.w500)),
                ),
              ),
            ),
            Center(
              child: Card(
                child: ListTile(
                  leading: Icon(Feather.log_out),
                  title: Text("Logout",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1
                          .copyWith(fontWeight: FontWeight.w500)),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
