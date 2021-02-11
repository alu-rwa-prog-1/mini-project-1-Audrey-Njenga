import 'package:flutter/material.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({
    @required this.link,
    @required this.title,
    @required this.price,
    Key key,
  }) : super(key: key);
  final String link;
  final String title;
  final String price;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
            color: Colors.white, borderRadius: BorderRadius.circular(20)),
        height: 450,
        width: 200,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(
                link,
                height: 110,
                fit: BoxFit.fill,
              ),
            ),
            Text(title, style: Theme.of(context).textTheme.headline1),
            Text(price,
                style: Theme.of(context)
                    .textTheme
                    .bodyText1
                    .copyWith(fontWeight: FontWeight.w500)),
          ],
        ),
      ),
    );
  }
}
