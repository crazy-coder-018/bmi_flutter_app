// ignore_for_file: unnecessary_import

import 'package:bmi_flutter_app/widgets/my_text_field.dart';
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
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  // BMI (Text)
                  Text(
                    'BMI ',
                    style: TextStyle(
                      color: Colors.blue,
                      fontSize: 24,
                      fontWeight: FontWeight.w700,
                    ),
                  ),

                  // Calculation App (Text)
                  Text(
                    'Calculation App',
                    style: TextStyle(color: Colors.grey[800], fontSize: 18),
                  ),
                ],
              ),
            ),

            SizedBox(height: 32),

            // Text Field
            MyTextField(myController: TextEditingController()),
          ],
        ),
      ),
    );
  }
}
