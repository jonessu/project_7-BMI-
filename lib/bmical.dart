import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'widget_bmi.dart';
import 'bmiformula.dart';
import 'route/route.dart' as route;

const Color activecolor = Color(0xFF0A0E21);
const Color inactivecolor = Color(0xFF1D1E33);
double height = 170;
double weight = 50;
double age = 20;
enum genter { male, female }

class InputPage extends StatefulWidget {
  static const routeName = '/first';
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  genter selectedgenter;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Row(
              children: [
                Expanded(
                  child: containerbox(
                    onPress: () {
                      setState(() {
                        selectedgenter = genter.male;
                      });
                    },
                    colour: selectedgenter == genter.male
                        ? activecolor
                        : inactivecolor,
                    childwidget: iconContext(
                      icondata: FontAwesomeIcons.mars,
                      icontext: "MALE",
                    ),
                  ),
                ),
                Expanded(
                  child: containerbox(
                    onPress: () {
                      setState(() {
                        selectedgenter = genter.female;
                      });
                    },
                    colour: selectedgenter == genter.female
                        ? activecolor
                        : inactivecolor,
                    childwidget: iconContext(
                      icondata: FontAwesomeIcons.venusMars,
                      icontext: "FEMALE",
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: containerbox(
              colour: Color(0xFF1D1E33),
              childwidget: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "HEIGHT",
                    style: TextStyle(color: Colors.white38, fontSize: 30.0),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        height.round().toString(),
                        style: TextStyle(color: Colors.white, fontSize: 40.0),
                      ),
                      Text(
                        "cm",
                        style: TextStyle(color: Colors.white24, fontSize: 30.0),
                      ),
                    ],
                  ),
                  SliderTheme(
                    data: SliderTheme.of(context).copyWith(
                      thumbColor: Color(0xFFEB1555),
                      overlayColor: Color(0x15EB1555),
                      thumbShape: RoundSliderThumbShape(
                        enabledThumbRadius: 10.0,
                      ),
                      overlayShape:
                          RoundSliderOverlayShape(overlayRadius: 25.0),
                      activeTrackColor: Colors.white,
                      inactiveTrackColor: Colors.white12,
                    ),
                    child: Slider(
                      value: height.toDouble(),
                      min: 120,
                      max: 200,
                      onChanged: (double value) {
                        setState(() {
                          height = value;
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
                  child: containerbox(
                    colour: Color(0xFF1D1E33),
                    childwidget: incrementHA(
                      inctext: 'WEIGHT',
                      incrementvalue: weight.round(),
                      onPressed1: () {
                        setState(() {
                          weight++;
                        });
                      },
                      onPressed2: () {
                        setState(() {
                          weight--;
                        });
                      },
                    ),
                  ),
                ),
                Expanded(
                  child: containerbox(
                    colour: Color(0xFF1D1E33),
                    childwidget: incrementHA(
                        inctext: 'AGE',
                        incrementvalue: age.round(),
                        onPressed1: () {
                          setState(() {
                            age++;
                          });
                        },
                        onPressed2: () {
                          setState(() {
                            age--;
                          });
                        }),
                  ),
                ),
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              String s1 = 'djklkd';
              claculatebmiformula calc =
                  claculatebmiformula(height: height, weight: weight);
              Navigator.of(context).pushNamed(route.input, arguments: {
                'v1': s1,
              });
            },
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFEB1555),
                borderRadius: BorderRadius.circular(10.0),
              ),
              width: double.infinity,
              height: 80.0,
              child: Center(
                child: Text(
                  "Calculate",
                  style: TextStyle(
                    fontSize: 40.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class incrementHA extends StatelessWidget {
  incrementHA(
      {this.inctext, this.incrementvalue, this.onPressed1, this.onPressed2});
  final String inctext;
  int incrementvalue;
  final Function onPressed1;
  final Function onPressed2;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(inctext),
        Text(incrementvalue.toString()),
        Expanded(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: RawMaterialButton(
                  fillColor: Color(0xFF4C4F5E),
                  onPressed: onPressed1,
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ),
              SizedBox(
                width: 10.0,
              ),
              Expanded(
                child: RawMaterialButton(
                  onPressed: onPressed2,
                  fillColor: Color(0xFF4C4F5E),
                  child: Icon(
                    FontAwesomeIcons.minus,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
