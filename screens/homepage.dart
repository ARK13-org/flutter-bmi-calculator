import 'package:bmi_calculater/bars/leftbar.dart';
import 'package:bmi_calculater/bars/rightbar.dart';
import 'package:flutter/material.dart';

class MyPage extends StatefulWidget {
  const new({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  TextEditingController heightController = TextEditingController();
  TextEditingController weightController = TextEditingController();
  double bmiDoubleResult = 0.0;
  String bmiDefulte = ' ';
  String bmiResult = ' ';
  Color defCol1 = Colors.transparent;
  Color defCol2 = Colors.transparent;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: 15),
          Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              SizedBox(
                height: 60,
                width: 110,
                child: TextFormField(
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 35,
                  ),
                  textAlign: TextAlign.center,
                  controller: heightController,
                  decoration: InputDecoration(
                    hintText: 'Height',
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 60,
                width: 110,
                child: TextFormField(
                  style: TextStyle(
                    color: Color(0xFFFFFFFF),
                    fontSize: 35,
                  ),
                  textAlign: TextAlign.center,
                  controller: weightController,
                  decoration: InputDecoration(
                    hintText: 'Weight',
                    hintStyle: TextStyle(
                      color: Colors.white,
                      fontSize: 35,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 35),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Color(0xFF14B8A6),
              side: BorderSide(
                color: Color(0xFFFFFFFF),
                width: 3,
              ),
            ),
            onPressed: (){
              double height = double.parse(heightController.text);
              double weight = double.parse(weightController.text);
              setState(() {
                defCol1 = Color(0xFF14B8A6);
                defCol2 = Color(0xFFFFFFFF);
                bmiDoubleResult = (weight / (height * height));
                bmiDefulte = bmiDoubleResult.toStringAsFixed(2);
                if (bmiDoubleResult > 25) {
                  bmiResult = 'You are over weight.';
                } else if (bmiDoubleResult >= 18.5 && bmiDoubleResult <= 25){
                  bmiResult = 'You weight is normal.';
                } else {
                bmiResult = 'You are under weight.';
                }
              });
            }, 
            child: Text(
              'Calculate',
              style: TextStyle(
                color: Color(0xFFFFFFFF),
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(height: 20),
          Container(
            height: 110,
            width: 320,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(35),
              color: defCol1,
              border: Border.all(
                color: defCol2,
                width: 3,
              ),
            ),
            child: Column(
              children: [
                Text(
                  bmiDefulte,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  bmiResult,
                  style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 15),
          RightContainer(width: 100),
          RightContainer(width: 50),
          RightContainer(width: 75),
          LeftContainer(width: 50),
          LeftContainer(width: 75),
        ],
      ),
    );
  }
}