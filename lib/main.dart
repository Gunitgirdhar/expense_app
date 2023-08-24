

import 'package:expense_app/Utils/ConstantImage.dart';
import 'package:expense_app/Utils/styling%20text.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var mediaQueryData=MediaQuery.of(context);
    var changeableHeight =mediaQueryData.size.height;
    var changeableWidth =mediaQueryData.size.width;
    print({changeableHeight});
    print({changeableWidth});
    return Scaffold(
      backgroundColor: Colors.grey.shade200,
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            CircleAvatar(backgroundColor: Colors.white,
            child: Image.asset(ConstantImage.appLogo,height: mediaQueryData.size.height*0.05,width: mediaQueryData.size.width*0.05,),
            radius: mediaQueryData.size.width*0.05,),
            Text("Expenses",style: mediaQueryData.size.width>500 ? mTextstyle34():mTextstyle25())
          ],
        ),
      ),
    );
  }
}

