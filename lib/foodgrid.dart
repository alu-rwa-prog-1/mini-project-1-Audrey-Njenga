import 'package:flutter/material.dart';
import 'package:mini_project_1/foodcard.dart';

class FoodView extends StatefulWidget {
  const FoodView({
    @required this.type,
    Key key,
  }) : super(key: key);
  final List<Map> type;
  @override
  _FoodViewState createState() => _FoodViewState();
}

class _FoodViewState extends State<FoodView> {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 1000,
        child: GridView.builder(
          gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: widget.type.length,
          itemBuilder: (context, index) => FoodCard(
              link: widget.type[index]["link"],
              title: widget.type[index]["title"],
              price: widget.type[index]["price"]),
        ),
      ),
    );
  }
}
