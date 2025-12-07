import 'package:flutter/material.dart';

class CounterContainer extends StatelessWidget {
  final String title;
  final int value;
  final VoidCallback? onIncrement;
  final VoidCallback? onDecrement;

  const CounterContainer({
    super.key,
    required this.title,
    required this.value,
    this.onIncrement,
    this.onDecrement,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color(0xff333244),
        ),
        child: Column(
          children: [
            Text(
              title,
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
            ),
            SizedBox(height: 10),
            Text(
              value.toString(),
              style: TextStyle(fontSize: 40, fontWeight: FontWeight.w500),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FloatingActionButton.small(
                  heroTag: '${title}_decrement',
                  onPressed: onDecrement,
                  backgroundColor: Color(0xff888C9E),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Icon(Icons.remove),
                ),
                FloatingActionButton.small(
                  heroTag: '${title}_increment',
                  onPressed: onIncrement,
                  backgroundColor: Color(0xff888C9E),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Icon(Icons.add),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
