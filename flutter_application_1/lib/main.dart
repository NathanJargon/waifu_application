import 'package:flutter/material.dart';
import 'components/home_screen.dart';


main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  const MyApp ({super.key});

  @override
  Widget build(BuildContext context){
    return MaterialApp(
          title: ("Waifu Application"),
          debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}


