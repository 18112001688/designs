import 'package:flutter/material.dart';
import 'package:massanger_design/modules/meassanger/Messanger_design.dart';
import 'layout/home_layout.dart';
import 'modules/Login/Login_Screen.dart';
import 'modules/bmi/BMI_Calclutor.dart';
import 'modules/bmi_result/BMI_result_Screen.dart';
import 'modules/counter/counter_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeLayout(
      ),
    );
  }
}

