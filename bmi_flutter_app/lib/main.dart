// ignore_for_file: unnecessary_import, unused_local_variable

import 'package:bmi_flutter_app/buttons/calculated_button.dart';
import 'package:bmi_flutter_app/widgets/bmi_cahrt.dart';
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
  var wtController = TextEditingController();
  var htController = TextEditingController();
  var inController = TextEditingController();
  var result = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                      'Calculate you\'re ',
                      style: TextStyle(color: Colors.grey[500], fontSize: 14),
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
                    myController: wtController,
                    hintText: 'Enter your Weight in Kg',
                    icon: Icon(
                      Icons.line_weight_rounded,
                      size: 18,
                      color: Colors.grey,
                    ),
                  ),

                  SizedBox(height: 24),

                  // Feet
                  MyTextField(
                    labelText: 'Your Height (Feet)',
                    myController: htController,
                    hintText: 'Enter your Height in Feet',
                    icon: Icon(
                      Icons.height_rounded,
                      size: 18,
                      color: Colors.grey,
                    ),
                  ),

                  SizedBox(height: 24),

                  // Inches
                  MyTextField(
                    labelText: 'Your Height (Inch)',
                    myController: inController,
                    hintText: 'Enter your Height in Inches',
                    icon: Icon(
                      Icons.height_rounded,
                      size: 18,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),

              SizedBox(height: 32),

              // Calculation Button
              CalculatedButton(
                callback: () {
                  var weight = wtController.text.toString();
                  var feet = htController.text.toString();
                  var inch = inController.text.toString();

                  if (weight != "" && feet != "" && inch != "") {
                    // BMI Calculation
                    var intWeight = int.parse(weight);
                    var intFeet = int.parse(feet);
                    var intInch = int.parse(inch);

                    var totalInches = (intFeet * 12) + intInch;
                    var totalCm = totalInches * 2.54;
                    var totalMeter = totalCm / 100;

                    var bodyMassIndex = intWeight / (totalMeter * totalMeter);

                    setState(() {
                      result =
                          'Your Total BMI is : ${bodyMassIndex.toStringAsFixed(2)}';
                    });
                  } else {
                    setState(() {
                      // When one or two or all Text Fields are empty
                      result = 'Please fill all of the required blanks';
                    });
                  }
                },
              ),

              SizedBox(height: 24),

              // Showing the result
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          // The Result after calculation
                          Text(
                            result,
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.w800,
                              color: Colors.blue[700],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),

              SizedBox(height: 24),

              // Chart of BMI Calculation is you're fit or not
              BmiCahrt(),
            ],
          ),
        ),
      ),
    );
  }
}
