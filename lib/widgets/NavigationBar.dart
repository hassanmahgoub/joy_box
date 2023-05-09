// ignore_for_file: file_names, prefer_const_constructors, unused_local_variable

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/Home.dart';
import 'package:flutter_application_1/screens/Profile.dart';
import 'package:flutter_svg/svg.dart';

import 'alert_dialog.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
        return  CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        currentIndex: 1,
        height: 70,
        backgroundColor: const Color(0xff010037),
        items:
       <BottomNavigationBarItem>[
      //active color use on first
    
      BottomNavigationBarItem(
        icon: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:[ SvgPicture.asset('images/person 1.svg',),
          SizedBox(height: 3,),
          Text('حسابي',style: TextStyle(color: Color(0xff25E0B1),fontFamily: 'rb',fontWeight: FontWeight.bold),)]), activeIcon: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children:[ SvgPicture.asset('images/person 1.svg',color: Colors.white,),
            SizedBox(height: 3,),
            Text('حسابي',style: TextStyle(color: Colors.white,fontFamily: 'rb',fontWeight: FontWeight.bold))
            ])),
      BottomNavigationBarItem(icon: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[ SvgPicture.asset('images/home 1.svg'),
        SizedBox(height: 3,),
      Text('الرئيسية',style: TextStyle(color: Color(0xff25E0B1),fontFamily: 'rb',fontWeight: FontWeight.bold),)
      ]), activeIcon: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children:[ SvgPicture.asset('images/home.svg'),
        SizedBox(height: 3,),
      Text('الرئيسية',style: TextStyle(color: Colors.white,fontFamily: 'rb',fontWeight: FontWeight.bold),)
      ])),
      
      ],
    ) ,
        tabBuilder: (context , index) {
          switch (index) {
            case 0:
    
              return CupertinoTabView(builder:  (context) {
                return const CupertinoPageScaffold(child: Profile(),);
              });
            case 1:
              return CupertinoTabView(builder: (context) {
                return const CupertinoPageScaffold(child: Home(),);
              });
            
            // default:
            //   CupertinoTabView(builder: (context) {
            //     return const CupertinoPageScaffold(child: HomePage(),);
            //   });
    
          } return Container();
        }
    );
}}