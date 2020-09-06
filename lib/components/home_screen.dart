import 'package:fitness_app/components/reusable_block.dart';
import 'package:fitness_app/components/reusable_card.dart';
import 'package:fitness_app/constant.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int weight;
  int height;
  int age;

  @override
  void initState() {
    weight = 60;
    height = 160;
    age = 16;
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fitness Calculator'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableBlock(
                    label: 'male',
                    icon: FontAwesomeIcons.mars,
                  ),
                ),
                Expanded(
                  child: ReusableBlock(
                    label: 'female',
                    icon: FontAwesomeIcons.venus,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: ReusableCard(
              content: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Height'.toUpperCase(),
                    style: kLabelStyle,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.baseline,
                    textBaseline: TextBaseline.alphabetic,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        height.toString(),
                        style: kNumberStyle,
                      ),
                      Text(
                        'cm',
                        style: kLabelStyle,
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      inactiveTrackColor: Color( 0xff8d8e98),
                      activeTrackColor: Colors.white,
                      thumbColor: Color(0xffeb1555),
                      overlayColor: Color(0x29eb1555),
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 15
                      ),
                      overlayShape: RoundSliderOverlayShape(
                        overlayRadius: 30
                      )
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120,
                      max:220,
                      onChanged: (value){
                        setState(() {
                          height = value.toInt();
                        });
                      },
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: ReusableCard(
                    content: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'weight'.toUpperCase(),
                          style: kLabelStyle,
                        ),
                        Text(
                          weight.toString(),
                          style: kNumberStyle,
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RawMaterialButton(
                              child: Icon(FontAwesomeIcons.minus),
                              constraints: BoxConstraints.tightFor(width: 56, height: 56),
                              shape: CircleBorder(),
                              fillColor: Color(0xfff4c4f5e),
                              onPressed: () {
                                setState(() {
                                  weight = weight -1;
                                });
                              },
                            ),
                            SizedBox(width: 10,),
                            RawMaterialButton(
                              child: Icon(FontAwesomeIcons.plus),
                              constraints: BoxConstraints.tightFor(width: 56, height: 56),
                              shape: CircleBorder(),
                              fillColor: Color(0xfff4c4f5e),
                              onPressed: () {
                                setState(() {
                                  weight = weight -1;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    content: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'age'.toUpperCase(),
                          style: kLabelStyle,
                        ),
                        Text(
                          age.toString(),
                          style: kNumberStyle,
                        ),
                        SizedBox(height: 10,),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            RawMaterialButton(
                              child: Icon(FontAwesomeIcons.minus),
                              constraints: BoxConstraints.tightFor(width: 56, height: 56),
                              shape: CircleBorder(),
                              fillColor: Color(0xfff4c4f5e),
                              onPressed: () {
                                setState(() {
                                  age = age -1;
                                });
                              },
                            ),
                            SizedBox(width: 10,),
                            RawMaterialButton(
                              child: Icon(FontAwesomeIcons.plus),
                              constraints: BoxConstraints.tightFor(width: 56, height: 56),
                              shape: CircleBorder(),
                              fillColor: Color(0xfff4c4f5e),
                              onPressed: () {
                                setState(() {
                                  age = age +1;
                                });
                              },
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Container(
            width: double.infinity,
            height: 80,
            color: Color(0xffeb1555),
            child: Center(child: Text('calculate'.toUpperCase(), style: kButtonTextStyle,)),
          )
        ],
      ),
    );
  }
}
