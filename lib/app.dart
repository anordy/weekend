import 'package:flutter/material.dart';
import 'package:weekend/views/home_page.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
     
        primarySwatch: Colors.deepPurple,
      ),
      home: HomePage(),
    );
  }
}
