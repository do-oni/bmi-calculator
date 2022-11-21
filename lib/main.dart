import 'package:bmi_calculator/screens/request_screen.dart';
import 'package:bmi_calculator/screens/result_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // customize dark theme
      theme: ThemeData.dark().copyWith(
        colorScheme: ColorScheme.fromSwatch().copyWith(
          primary: Color(0xFF0A0E21),
          secondary: Colors.purple,
        ),
        textTheme: TextTheme(
          bodyText2: TextStyle(
            color: Color(0xFFFFFFFF), // white
          ),
        ),
      ),
      initialRoute: '/request',
      routes: {
        '/request': (context) => RequestScreen(),
        ResultScreen.routeName: (context) => ResultScreen(
              bmiResult: '',
              resultText: '',
              interpretation: '',
            ),
      },
    );
  }
}
