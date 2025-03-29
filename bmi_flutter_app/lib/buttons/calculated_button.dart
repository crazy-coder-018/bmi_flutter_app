import 'package:flutter/material.dart';

class CalculatedButton extends StatelessWidget {
  const CalculatedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: EdgeInsets.only(
                left: 100,
                right: 100,
                top: 18,
                bottom: 18,
              ),
              backgroundColor: Colors.blue,
            ),
            child: Row(
              children: [
                Text(
                  'Calculate',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                    color: Colors.white,
                  ),
                ),

                SizedBox(width: 3),

                Icon(Icons.calculate_rounded, color: Colors.white),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
