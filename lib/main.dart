import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:this_bmi/cardicon.dart';
import 'package:this_bmi/reusablecard.dart';

const bottomHeight = 40.0;
const activeColour = Colors.red;
const bottomColour = Colors.purple;
const sizeHeight = 15.0;
const IconSize = 80.0;
const inActiveColour = Colors.purple;
const activeActiveColour = Colors.orange;

enum Gender {
  male,
  female,
}

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData.dark().copyWith(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primaryColor: Colors.blue,
        scaffoldBackgroundColor: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  Gender selectedGender;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI'),
      ),
      body: Column(
        children: [
          Expanded(
            child: Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.male;
                        });
                      },
                      child: ReusableCard(
                        colour: selectedGender == Gender.male
                            ? activeColour
                            : inActiveColour,
                        cardChild: CardIconText(
                            icon: FontAwesomeIcons.mars, label: "MALE"),
                      ),
                    ),
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedGender = Gender.female;
                        });
                      },
                      child: ReusableCard(
                        colour: selectedGender == Gender.female
                            ? activeColour
                            : inActiveColour,
                        cardChild: CardIconText(
                          icon: FontAwesomeIcons.venus,
                          label: "female",
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      colour: activeColour,
                      cardChild: CardIconText(
                          icon: FontAwesomeIcons.mars, label: "MALE"),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Expanded(
              child: Row(
                children: [
                  Expanded(
                    child: ReusableCard(
                      colour: activeColour,
                      cardChild: CardIconText(
                          icon: FontAwesomeIcons.mars, label: "MALE"),
                    ),
                  ),
                  Expanded(
                    child: ReusableCard(
                      colour: activeColour,
                      cardChild: CardIconText(
                          icon: FontAwesomeIcons.mars, label: "MALE"),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            color: bottomColour,
            height: bottomHeight,
            width: double.infinity,
          ),
        ],
      ),
    );
  }
}
