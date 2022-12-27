// ignore_for_file: file_names
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'loginPage.dart';
class Splash extends StatefulWidget {
  const Splash({ Key? key }) : super(key: key);
  @override
  State<Splash> createState() => _SplashState();
}
class _SplashState extends State<Splash> {
  @override
  void initState(){
    super.initState();
    Timer(const Duration(seconds: 5), ()=>Navigator.pushReplacement(context,MaterialPageRoute(builder: (context)=>const loginPage())));
  }
  @override
  Widget build(BuildContext context) {
        final screenSize =MediaQuery.of(context).size;
    return Scaffold(
      body: Stack(children: [
        Container(
    decoration: const BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment(1.0, -1.0),
        end: Alignment(-0.602, -0.252),
        colors: [Color(0xffffffff), Color(0x1a25e0b1)],
        stops: [0.0, 1.0],
      ),
    ),
  ),
  Center(
    child: SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(height: 190),
        SvgPicture.asset('images/joy.svg',),
        const SizedBox(height: 10,),
        const Text(
      'احد منتجات شركة مكعبات لتقنية الملومات',
      style: TextStyle(
        fontFamily: 'sst arabic',
        fontSize: 12,
        fontWeight: FontWeight.bold,
        color: Color(0xff393939),
      ),
      textHeightBehavior: TextHeightBehavior(applyHeightToFirstAscent: false),
      softWrap: false,
      ),
      const SizedBox(height: 40,),
      SizedBox(
        width: screenSize.width,
       child: SvgPicture.asset('images/Taieri.svg',fit: BoxFit.cover,),
      ),
      ],),
    ),
  ),
      ],),
    );
  }
}