import 'package:flutter/cupertino.dart';

class ReusableCard extends StatelessWidget {
  final content;

  ReusableCard({this.content});

  @override
  Widget build(BuildContext context) {
    return  Container(
        margin: EdgeInsets.all(15),
    decoration: BoxDecoration(
    color:Color(0xff111328),
    borderRadius: BorderRadius.circular(10),
    ),
      child: content,
    );
  }
}
