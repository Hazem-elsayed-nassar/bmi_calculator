import 'package:flutter/material.dart';

class CounterContainer extends StatelessWidget {
  final String title;
  final int value;
  const CounterContainer({super.key,required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: EdgeInsets.symmetric(vertical: 15),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Color(0xff333244),
        ),
        child: Column(
          children: [
            Text(title,style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),),
            SizedBox(height: 5),
            Text(value.toString()
            ,style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.w500,
            ),),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                FloatingActionButton.small(
                  onPressed: () {},
                  backgroundColor: Color(0xff888C9E),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(100),
                  ),
                  child: Icon(Icons.remove),
                ),
                FloatingActionButton.small(
                  onPressed: () {},
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
