// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, avoid_relative_lib_imports, prefer_final_fields, unused_local_variable, unnecessary_import

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import 'HomePage.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({ Key? key }) : super(key: key);

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
      GlobalKey<ScaffoldState>_globalKey=GlobalKey<ScaffoldState>();

  int selectedValue =0;
  @override
  Widget build(BuildContext context) {
    final screenSize =MediaQuery.of(context).size;
    return Scaffold(
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
             ListView(children: [
          
              ],),
        ]),),
      
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
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15,),
      child: SingleChildScrollView(
        child: Column(children:  [
                   Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    IconButton(onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
                    }, icon: Icon(Icons.arrow_back_ios)),
                  IconButton(
                              onPressed: (){
                                _globalKey.currentState!.openDrawer();
                              },
                              icon: const Icon(Icons.menu_rounded,size: 30,),),
                  ],),
                  SizedBox(height: 50,),
                  Text('اختر نوع الدفع',style: TextStyle(fontFamily: 'rb',fontSize: 15,fontWeight: FontWeight.bold),),
                  Stack(
                    children:[ Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                    Text('نقداً',style: TextStyle(fontFamily: 'rb',fontSize: 15,fontWeight: FontWeight.bold),),
                        
                        Radio(
                          
                          value: 1, groupValue: selectedValue, onChanged: (value)=>setState(()=>selectedValue=1),
                        activeColor: Color(0xff25E0B1),
                        
                        
                        
                        ),                  
                           ],
                           ),
        ]),
        
                  
           Padding(
             padding: const EdgeInsets.only(bottom: 5),
             child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                  Padding(
                  padding: const EdgeInsets.only(left: 2),
                  child: Text('بطاقة نقدية',style: TextStyle(fontFamily: 'rb',fontSize: 15,fontWeight: FontWeight.bold),),
                  ),
        
                    Radio(value: 0, groupValue: selectedValue, onChanged: (value)=>setState(()=>selectedValue=0),
                    activeColor: Color(0xff25E0B1),                    
                    ),                  
         ],
         ),
           ),
          Row(children: [
            Expanded(
              child: Container(
                height: 30,
                width: 189,
                decoration: BoxDecoration(
                color: Color(0xff010037),
      
                borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text('00.00',style: TextStyle(color: Colors.white,fontFamily: 'sst arabic',fontWeight: FontWeight.w500),),
                  Text('المجموع',style: TextStyle(color: Colors.white,fontFamily: 'rb',fontWeight: FontWeight.w500),)
                  ],),
                ),
              ),
            ),
            SizedBox(width: 5,),
            Expanded(
              child: Container(height: 30,
              width: 189,
              decoration: BoxDecoration(
                            color: Color(0xff010037),
      
                borderRadius: BorderRadius.circular(5)),
                child:  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text('04',style: TextStyle(color: Colors.white,fontFamily: 'sst arabic',fontWeight: FontWeight.w500),),
                    Text('عدد التذاكر',style: TextStyle(color: Colors.white,fontFamily: 'rb',fontWeight: FontWeight.w500),)
                    ],),
                ),
              ),
            ),
          ],),
          SizedBox(height: 5,),
           Row(children: [
            Expanded(
              child: Container(
                height: 30,
                width: 189,
                decoration: BoxDecoration(
                color: Color(0xff010037),
      
                borderRadius: BorderRadius.circular(5)),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                    Text('00.00',style: TextStyle(color: Colors.white,fontFamily: 'sst arabic',fontWeight: FontWeight.w500),),
                  Text('خصم',style: TextStyle(color: Colors.white,fontFamily: 'rb',fontWeight: FontWeight.w500),)
                  ],),
                ),
              ),
            ),
            SizedBox(width: 5,),
            Expanded(
              child: Container(height: 30,
              width: 189,
              decoration: BoxDecoration(
                            color: Color(0xff010037),
      
                borderRadius: BorderRadius.circular(5)),
                child:  Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      Text('00.00',style: TextStyle(color: Colors.white,fontFamily: 'sst arabic',fontWeight: FontWeight.w500),),
                    Text('الضريبة',style: TextStyle(color: Colors.white,fontFamily: 'rb',fontWeight: FontWeight.w500),)
                    ],),
                ),
              ),
            ),
          ],),
        SizedBox(height: 5,),
        Container(
          height: 30,
          width: screenSize.width,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Color(0xff010037)),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                        Text('4550.00', style: TextStyle(color: Colors.white, fontFamily: 'sst arabic',fontWeight: FontWeight.w500,),),
        
            Padding(
              padding: const EdgeInsets.only(bottom: 5,right: 7),
              child: Text('اجمالي المستحق', style: TextStyle(color: Colors.white, fontFamily: 'rb',fontWeight: FontWeight.w500),),
            ),
        ],),
          ),),
            
          
      
      
      
           SizedBox(height: 8,),
                  InkWell(
                    child: Container(
                      height: 35,
                      width: screenSize.width,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Color(0xff25E0B1)),
                      child:  Center(child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:[ Text('دفع',style: TextStyle(fontFamily: 'rb',fontSize: 16,color: Color(0xff010037),fontWeight: FontWeight.bold),),
                      Padding(
                        padding: const EdgeInsets.only(top: 4,left: 6),
                        child: SvgPicture.asset('images/dollar.svg',height: 12,),
                      )
                      ])),
                      ),
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>const HomePage()));
                      },
                  ),
                SizedBox(height: 20,)
          ]
          ),
      ),
    
  
     ) ),
    
     ],),
      
    );
  }
}