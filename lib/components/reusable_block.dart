import 'package:fitness_app/components/reusable_card.dart';
import 'package:fitness_app/constant.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ReusableBlock extends StatelessWidget {

  final label;
  final icon;


  ReusableBlock({this.label, this.icon});

  @override
  Widget build(BuildContext context) {
    return ReusableCard(
      content: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, size: 80,),
          SizedBox(height: 10,),
          Text(label.toUpperCase(), style: kLabelStyle),
        ],
      ),
    );
  }
}
