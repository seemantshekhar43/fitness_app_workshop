import 'package:flutter/cupertino.dart';

import '../constant.dart';

class BottomButton extends StatelessWidget {
  final label;


  BottomButton({@required this.label});

  @override
  Widget build(BuildContext context) {
    return  Container(
      width: double.infinity,
      height: 80,
      color: Color(0xffeb1555),
      child: Center(
          child: Text(
            label.toUpperCase(),
            style: kButtonTextStyle,
          )),
    );
  }
}
