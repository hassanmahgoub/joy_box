import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_application_1/screens/Home.dart';
import 'package:flutter_application_1/screens/Profile.dart';
import 'package:flutter_application_1/screens/Settings.dart';
import 'package:flutter_svg/svg.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex=0;
   final screens =[
    AlertDialog(),
    Profile(),
    Home(),
   ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xff010037),
        unselectedItemColor: Color(0xff25E0B1),
        selectedItemColor: Color(0xff25E0B1),
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex=index;
          });
        },
        items: [
        BottomNavigationBarItem(icon: SvgPicture.asset('images/power.svg'),label: 'خروج'),
        BottomNavigationBarItem(icon: SvgPicture.asset('images/person 1.svg'),label: 'حسابي'),
        BottomNavigationBarItem(icon: SvgPicture.asset('images/home.svg'),label: 'الرئيسية'),
      ],)
    );
  }
}