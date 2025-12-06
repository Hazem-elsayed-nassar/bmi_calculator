import 'package:bmi_calculator/widgets/custom_nav_bat.dart';
import 'package:flutter/material.dart';
import '../widgets/custom_app_bar.dart';

class ResultScreen extends StatelessWidget {
  final double bmi;
  final int age;
  final bool isMale;

  const ResultScreen({
    super.key,
    required this.bmi,
    required this.age,
    required this.isMale,
  });

  String get resultText {
    if (bmi < 18.5) return "Underweight";
    if (bmi < 25) return "Normal";
    if (bmi < 30) return "Overweight";
    return "Obese";
  }

  String get resultDescription {
    if (bmi < 18.5) return "You are Underweight, You need to eat more.";
    if (bmi < 25) return "You Have a Normal Body Weight, Good Job.";
    if (bmi < 30) return "You are Overweight, Try to exercise more.";
    return "Your weight is too high, Consult a doctor.";
  }

  Color get resultColor {
    if (bmi < 18.5) return Colors.red;
    if (bmi < 25) return Color(0xff21BF73);
    if (bmi < 30) return Colors.red;
    return Colors.redAccent;
  }

  get bottomNavigationBar => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1C2135),
      appBar: const CustomAppBar(),

      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              "Your Result",
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Color(0xffffffff),
              ),
            ),

            const SizedBox(height: 30),

            Expanded(
              child: Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xff333244),
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      resultText,
                      style: TextStyle(
                        fontSize: 26,
                        fontWeight: FontWeight.bold,
                        color: resultColor,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      bmi.toStringAsFixed(1),
                      style: const TextStyle(
                        fontSize: 80,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 20),
                    Text(
                      resultDescription,
                      textAlign: TextAlign.center,
                      style: const TextStyle(
                        fontSize: 18,
                        color: Colors.white70,
                      ),
                    ),
                    const SizedBox(height: 30),
                    Text(
                      "Gender: ${isMale ? "Male" : "Female"}",
                      style: const TextStyle(fontSize: 20),
                    ),
                    Text("Age: $age", style: const TextStyle(fontSize: 20)),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 20),
          ],
        ),
      ),
      bottomNavigationBar: BottomButtonBar(
        text: "Re - Calculate",
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }
}
