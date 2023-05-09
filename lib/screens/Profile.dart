// ignore_for_file: file_names, prefer_const_constructors, avoid_unnecessary_containers, prefer_final_fields, unused_import, avoid_relative_lib_imports, unused_local_variable, unnecessary_import, sort_child_properties_last

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application_1/widgets/NavigationBar.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/alert_dialog.dart';
import 'Home.dart';
import 'PasswerdChange.dart';

class Profile extends StatefulWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  State<Profile> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<Profile> {
      GlobalKey<ScaffoldState>_globalKey=GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    final screenSize =MediaQuery.of(context).size;
    return Scaffold(
      //bottomNavigationBar: HomePage(),
      key: _globalKey,
      endDrawer: Drawer(
        
        child: Stack(
          children:[
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
            
        ]),),
      // 
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
  SafeArea(
    child: SingleChildScrollView(
      child: Column(children: [
        SizedBox(height: 5,),
        Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                  IconButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                  }, icon: Icon(Icons.arrow_back_ios)),
                IconButton(
                            onPressed: (){
                              _globalKey.currentState!.openDrawer();
                            },
                            icon: const Icon(Icons.menu_rounded,size: 30,),),
                ],),
              ),
              SizedBox(height: 40,),
              Container(decoration: BoxDecoration(
                      border: Border.all(width: 0.5,color: const Color(0xff25E0B1)),
                      borderRadius: BorderRadius.circular(36),color: Colors.white,),child: Padding(
                      padding: const EdgeInsets.all(15.0),
                      child: InkWell(
                        child: Container(
                          
                          child: CircleAvatar(child:  SvgPicture.asset('images/person.svg',),
                          backgroundColor: Colors.white,),),
                      onTap: (){
                        //Navigator.push(context, MaterialPageRoute(builder: (context)=>ProfilePage()));
                      },
                      ),
                    ),),
                                SizedBox(height: 5,),
      
                    Text('اسم المنظم',style: TextStyle(fontFamily: 'rb',fontSize: 26,fontWeight: FontWeight.bold),),
                                SizedBox(height: 30,),
      
                    Text('اسم الشركة المنظمة من هنا',style: TextStyle(fontFamily: 'rb',fontSize: 16,fontWeight: FontWeight.bold),),
                    Divider(thickness: 0.5, endIndent: 20,indent: 20,color: Color(0xff010037),),
                    Text('0531234567',style: TextStyle(fontFamily: 'rb',fontSize: 16,fontWeight: FontWeight.bold),),
      
                    Divider(thickness: 0.5, endIndent: 20,indent: 20,color: Color(0xff010037),),
                    Text('hello@joyboxme.com',style: TextStyle(fontFamily: 'rb',fontSize: 16,fontWeight: FontWeight.bold),),
                    SizedBox(height: 40,),
                    Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: InkWell(
                child: Container(
                  height: 40,
                      width: screenSize.width,
                      decoration: BoxDecoration(
                            color: const Color(0xff010037),
                            borderRadius: BorderRadius.circular(5),
                      ),
                      child: const Center(child: Text('تغيير كلمة المرور',style: TextStyle(fontFamily: 'rb',fontSize:16,fontWeight: FontWeight.bold,color: Color(0xff25E0B1)),)),
                      ),
                      onTap: (){
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>const PasswerdChange()));
                      },
              ),
            ),
            const SizedBox(height: 8,),
               Padding(
                 padding: const EdgeInsets.symmetric(horizontal: 20),
                 child: InkWell(
                   child: Container(
                        width: screenSize.width,
                        height: 40,
                        decoration: BoxDecoration(
                              color: const Color(0xff010037),
                              borderRadius: BorderRadius.circular(5),
                        ),
                        child: const Center(child: Center(child: Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Text('خروج من التطبيق',style: TextStyle(fontFamily: 'rb',fontSize:16,fontWeight: FontWeight.bold,color: Color(0xff25E0B1)),),
                        ))),
                        ),
                        onTap: () async {
                                          final action= await AlertDialogs.yesCancelDialog(context,'Logout','خروج من التطبيق؟');

                  },
                 ),
               ),
               //SizedBox(height: 20,)
              
      
      ],),
    ),
  ),
  
      ],),
    );
  }
}