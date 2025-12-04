import 'package:bmi_calculator/widgets/counter_container.dart';
import 'package:bmi_calculator/widgets/custom_app_bar.dart';
import 'package:bmi_calculator/widgets/gender_container.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
    @override
  State<StatefulWidget> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  bool isMale = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          spacing: 20,
          children: [
            //gander row
            Row(
              children: [
                GenderContainer(title: 'Male', icon: Icons.male,
                 isactive: isMale,
                 onTap: () {
                    setState(() {
                      isMale = true;
                    });
                 } ,
                ),
               
                SizedBox(width: 10),
                GenderContainer(title: 'Female', icon: Icons.female,
                isactive: !isMale,
                 onTap: () {
                   setState(() {
                    isMale = false; 
                   }); 
                 } ,
                ),
              ],
            ),

            //height container
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xff333244),
              ),
              child: Column(
                spacing: 20,
                children: [
                  Text(
                    "Height",
                    style: TextStyle(fontSize: 30, fontWeight: FontWeight.w500),
                  ),
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: "150",
                          style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        TextSpan(
                          text: " cm",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Slider(
                    value: .7,
                    onChanged: (value) {},
                    activeColor: Color(0xffE83D67),
                    inactiveColor: Color(0xffFFFFFF),
                    thumbColor: Color(0xffE83D67),
                  ),
                ],
              ),
            ),

            //weight and age row
            Row(
              children: [
                CounterContainer(
                  title: 'Weight',
                  value: 67,  
                ),
                SizedBox(width: 10),
                CounterContainer(
                  title: 'Age',
                  value: 33,
                ),
                
              ],
            ),
          ],
        ),
      ),
    bottomNavigationBar:Container(
        width: double.infinity,
        height: 80,
        color: Color(0xffE83D67),
        child: Center(
          child: Text(
            "Calculate",
            style: TextStyle(
              color: Colors.white,
              fontSize: 32,
              fontWeight: FontWeight.w600,
            ),
          ),
        ),
      ),
    ); 
  }
}
