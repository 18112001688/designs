import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Counter_Screen extends StatefulWidget {
  const Counter_Screen({Key? key}) : super(key: key);

  @override
  // a method that return the state of your app whenever you rebuild it and make the
  // rebuild itself
  State<Counter_Screen> createState() => _Counter_ScreenState();
}

class _Counter_ScreenState extends State<Counter_Screen> {

  int num=0;
  @override
  // حاله مبدئية بتاخدها ال ستاستفل ويديجيت لحد متاخد حالة
  void initState() {
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Counter'
        ),
      ),
      body: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
            onPressed: (){
              setState(() {
                num--;
              });
            },
              child: Text(
                "MINUS",
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
    ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                  '${num}',
                style: TextStyle(
                  fontSize: 60,
                  fontWeight: FontWeight.w900,
                ),
              ),
            ),
            TextButton(
              onPressed: (){
                // rebuild the build widget
                setState(() {
                  num++;
                });
              },
              child: Text(
                "PLUS",
                style: TextStyle(
                  fontSize: 24,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
