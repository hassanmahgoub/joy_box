// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/NavigationBar.dart';
import 'package:flutter_application_1/screens/Splash.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  var email = _prefs.getString('E');
  var password =  _prefs.getString('P');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
       
        primarySwatch: Colors.blue,
      ),
      home: const Splash(),
    );
  }
}

