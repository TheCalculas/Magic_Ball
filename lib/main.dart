import 'package:flutter/material.dart';
import 'dart:math';
void main() {
  runApp(const MyApp());
}
class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // ise override ke saath mat rakhna nhi toh reload nhi hota hai
  int numb = 3;
  void change()
  {
    setState(() {

      numb= Random().nextInt(5)+1;
    }
    );
  }
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
       home: Scaffold(
         backgroundColor: Colors.lightBlueAccent,
         appBar: AppBar(
           backgroundColor: Colors.lightBlue,
           title: const Center(child: Text('Magic Ball'),),
         ),
         body: Center(
           child: Row(
             children: [
               Expanded(child:
                TextButton(
                  onPressed: (){
                    change();
                  },
                  child: Image.asset('images/ball$numb.png'),

                )
               )
             ],
           ),
         ),
       )
    );
  }
}
