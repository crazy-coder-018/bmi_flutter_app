// ignore_for_file: unnecessary_import

import 'package:bmi_flutter_app/widgets/my_text_field.dart';
import 'package:bmi_flutter_app/widgets/my_text_field_2.dart';
import 'package:bmi_flutter_app/widgets/my_text_field_3.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter BMI Application',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Text
            Padding(
              padding: const EdgeInsets.only(top: 22.0, left: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // BMI stands for "Body Mass Index", (Text)
                  Text(
                    'calculate you\'re ',
                    style: TextStyle(color: Colors.grey[800], fontSize: 16),
                  ),

                  // Calculation App (Text)
                  Text(
                    'Body Mass Index',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 36,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ],
              ),
            ),

            SizedBox(height: 32),

            // Text Fields
            Column(
              children: [
                // Weight
                MyTextField(
                  labelText: 'Your Weight',
                  myController: TextEditingController(),
                  hintText: 'Enter your Weight in Kg',
                  icon: Icon(
                    Icons.line_weight_rounded,
                    size: 18,
                    color: Colors.grey,
                  ),
                ),

                SizedBox(height: 24),

                // Feet
                MyTextField2(
                  labelText: 'Your Height (Feet)',
                  myController2: TextEditingController(),
                  hintText: 'Enter your Height in Feet',
                  icon: Icon(
                    Icons.height_rounded,
                    size: 18,
                    color: Colors.grey,
                  ),
                ),

                SizedBox(height: 24),

                // Inches
                MyTextField3(
                  labelText: 'Your Height (Inch)',
                  myController3: TextEditingController(),
                  hintText: 'Enter your Height in Inches',
                  icon: Icon(
                    Icons.height_rounded,
                    size: 18,
                    color: Colors.grey,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
