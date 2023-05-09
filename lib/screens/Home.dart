// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, unused_import, avoid_relative_lib_imports, prefer_final_fields, unused_local_variable, prefer_typing_uninitialized_variables, unnecessary_import, sort_child_properties_last
import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';
import 'package:focused_menu/focused_menu.dart';
import 'package:focused_menu/modals.dart';
//import 'package:joy_app/lib/Widgets/drop_down.dart';

import 'AddCustomr.dart';
import 'PaymentPage.dart';
import 'Profile.dart';



class Home extends StatefulWidget {
const Home({ Key? key }) : super(key: key);

@override
State<Home> createState() => _HomePageState();
}

class _HomePageState extends State<Home> {
    
  
 
var freindVal;
List freindName =[
'حسن محجوب','لؤي عثمان','أحمد صلاح','الزبون الافتراضي'
];
  
GlobalKey<ScaffoldState>_globalKey=GlobalKey<ScaffoldState>();

int count=0;
int count1=0;
int count2=0;
int count3=0;
int count4=0;

get dropdownCallback => null;
  



void incrementCount(){
    setState(() {
      count++;
    });
  }
void descrementCount(){
    if(count < 1){
      return;
    }
    setState(() {
      count--;
    });
  }
void incrementCount1(){
    setState(() {
      count1++;
    });
  }
void descrementCount1(){
    if(count1 < 1){
      return;
    }
    setState(() {
      count1--;
    });
  }
void incrementCount2(){
    setState(() {
      count2++;
    });
  }
void descrementCount2(){
    if(count2 < 1){
      return;
    }
    setState(() {
      count2--;
    });
  }
void incrementCount3(){
    setState(() {
      count3++;
    });
  }
void descrementCount3(){
    if(count3 < 1){
      return;
    }
    setState(() {
      count3--;
    });
  }
void incrementCount4(){
    setState(() {
      count4++;
    });
  }
void descrementCount4(){
    if(count4 < 1){
      return;
    }
    setState(() {
      count4--;
    });
  }

 Widget currenScreen = Home(); 
@override
Widget build(BuildContext context) {
 var p = Profile();
var placeVal;
List placeName = ['ليالي العلا الشتوية','مدائن صالح','جدة التاريخية'];
final screenSize = MediaQuery.of(context).size;
return Scaffold(
  //bottomNavigationBar: NavigationBottun(),
key: _globalKey,
endDrawer:Drawer(
 
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


]),
),

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
child: Padding(
  padding: const EdgeInsets.only(top: 0),
  child:   Column(
  children: [
    SizedBox(height: 5,),
  Center(
  child: Padding(
  padding: const EdgeInsets.symmetric(horizontal: 10),
  child: Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children:  [ 
  
  Container(
  width: 50,
  ),
  Center(
    child:   const Text('نقطة مبيعات التذاكر',
    style: TextStyle(
    fontFamily: 'rb',fontSize: 16,fontWeight: FontWeight.bold,
    ),),
  ),
  
  IconButton(
  onPressed: (){
  _globalKey.currentState!.openDrawer();
  },
  icon: const Icon(Icons.menu_rounded,size: 30,),)
  ]),
  ),
  ),
  const SizedBox(height: 10,),
  Padding(
  padding: const EdgeInsets.symmetric(horizontal: 15),
  child: Row(
  mainAxisAlignment: MainAxisAlignment.spaceBetween,
  children: [
  Padding(
  padding: const EdgeInsets.only(left: 0),
  child: Container(decoration: BoxDecoration(
  border: Border.all(width: 0.5,color: const Color(0xff25E0B1)),
  borderRadius: BorderRadius.circular(36),color: Colors.white,),child: Padding(
  padding: const EdgeInsets.all(15.0),
  child: CircleAvatar(child:  SvgPicture.asset('images/person.svg',),
  backgroundColor: Colors.white,),
  ),),
  ),
  Column(
  children:const [ Text('ياهلا وغلا',style: TextStyle(color: Color(0xff010037),fontWeight: FontWeight.bold,fontFamily: 'rb',fontSize: 26),),
  Text('لؤي عثمان',style: TextStyle(color: Color(0xff25E0B1),fontFamily: 'rb',fontSize: 16))
  ])
  ],),
  ),
  SizedBox(height: 10,),
  Padding(
  padding: const EdgeInsets.symmetric(horizontal: 10),
  child: Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children:[ Container(
  height: 40,
  width: 40,
  decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Color(0xff010037)),
  child: Padding(
                          padding: const EdgeInsets.all(7.0),
                          child: InkWell(
                            child: Center(child: SvgPicture.asset('images/add.svg',height: 60,)
                            ),
                              onTap: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>AddCustomr()));
                              },
                          ),
                        ),
                          
                        ),
                        SizedBox(width: 5,),
                        Expanded(
                          child: Container(
                          height: 40,
                          width: 320,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.white,border: Border.all(width: 0.5,color: Color(0xff25E0B1))),
                            child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child:Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:[ PopupMenuButton(
                                
                                icon: Icon(Icons.expand_more,color: Color(0xff25E0B1),),
                                
                                itemBuilder: (context)=>[
                                PopupMenuItem(child: Text('حسن محجوب'),value: 'حسن محجوب',),
                                PopupMenuItem(child: Text('احمد صلاح'),value: 'احمد صلاح',),
                                PopupMenuItem(child: Text('لؤي عثمان'),value: 'لؤي عثمان',)
                              ],
                              
                              ),
                              Text('الزبون الافتراضي',style: TextStyle(color: Color(0xff010037),fontFamily: 'rb'),)
                        ]),
                          ),
                            ),
                            ),
                        ),
                      ]),
                    ),
                   
              
                    const SizedBox(height: 8,),
                    
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        children:[ Expanded(
                          child: Container(
                          height: 40,
                          width: 320,
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Colors.white,border: Border.all(width: 0.5,color: Color(0xff25E0B1))),
                            child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child:Center(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children:[ PopupMenuButton(
                                
                                icon: Icon(Icons.expand_more,color: Color(0xff25E0B1),),
                                
                                itemBuilder: (context)=>[
                                PopupMenuItem(child: Text('ليالي العلا الشتوية'),value: 'ليالي العلا الشتوية',),
                                PopupMenuItem(child: Text('مدائن صالح'),value: 'مدائن صالح',),
                                PopupMenuItem(child: Text('جدة التاريخية'),value: 'جدة التاريخية',),
                                
                              ],
                              
                              ),
                              Text('ليالي العلا الشتوية',style: TextStyle(color: Color(0xff010037),fontFamily: 'rb'),)
                        ]),
                          ),
                            ),
                            ),
                        ),
                      ]),
                    ),
                     const SizedBox(height: 10,),
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 15),
                       child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: const [ Padding(
                          padding: EdgeInsets.symmetric(horizontal: 0),
                          child: Text('فئات التذاكر',style: TextStyle(fontFamily: 'rb',fontWeight: FontWeight.bold,fontSize: 12,color: Color(0xff010037)),),
                        )]),
                     ),
                     Padding(
               padding: const EdgeInsets.symmetric(horizontal: 12),
               child: Container(
                height: 35,
                width: screenSize.width,
              decoration: BoxDecoration(
                    color: const Color(0xff010037),
                    borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      SizedBox(
                        width: 90,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:[ 
                              InkWell(child: Icon(Icons.arrow_back_ios,color: Colors.white,size: 17,),
                              onTap: () {
                                descrementCount();
                              },
                              ),
                      Text('$count',style: TextStyle(fontFamily: 'rb',color: Colors.white,fontSize: 16),),
                      InkWell(child: Icon(Icons.arrow_forward_ios,color: Colors.white,size: 17,),
                      onTap: () {
                          incrementCount();
                      },
                      ),
                      ]),
                        ),
                      ),
                       
                    
                      SizedBox(
                        width: 45,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:[  Text('ريال',style: TextStyle(fontFamily: 'rb',color: Colors.white,fontSize: 10),),
                       const Text('200',style: TextStyle(fontFamily: 'rb',color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                      ])),
                    
                      SizedBox(
                        width: 104,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:[ const Text('تذكرة النوع الأول',style: TextStyle(fontFamily: 'rb',color: Colors.white,fontSize: 12),),
                      SvgPicture.asset('images/cash.svg'),
                      ])),
                      
                    
                ],),
              ),
                    ),
                     ),
                     const SizedBox(height: 8,),
                     Padding(
               padding: const EdgeInsets.symmetric(horizontal: 12),
               child: Container(
                height: 35,
                width: screenSize.width,
              decoration: BoxDecoration(
                    color: const Color(0xff010037),
                    borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      SizedBox(
                        width: 90,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:[ 
                              InkWell(child: Icon(Icons.arrow_back_ios,color: Colors.white,size: 17,),
                              onTap: () {
                                descrementCount1();
                              },
                              ),
                      Text('$count1',style: TextStyle(fontFamily: 'rb',color: Colors.white,fontSize: 16),),
                      InkWell(child: Icon(Icons.arrow_forward_ios,color: Colors.white,size: 17,),
                      onTap: () {
                          incrementCount1();
                      },
                      ),
                      ]),
                        ),
                      ),
                       
                    
                      SizedBox(
                        width: 45,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:[  Text('ريال',style: TextStyle(fontFamily: 'rb',color: Colors.white,fontSize: 10),),
                       const Text('400',style: TextStyle(fontFamily: 'rb',color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                      ])),
                    
                      SizedBox(
                        width: 105,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:[ const Text('تذكرة النوع الثاني',style: TextStyle(fontFamily: 'rb',color: Colors.white,fontSize: 12),),
                      SvgPicture.asset('images/cash.svg'),
                      ])),
                      
                    
                ],),
              ),
                    ),
                     ),
                     const SizedBox(height: 8,),
                     Padding(
               padding: const EdgeInsets.symmetric(horizontal: 12),
               child: Container(
                height: 35,
                width: screenSize.width,
              decoration: BoxDecoration(
                    color: const Color(0xff010037),
                    borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      SizedBox(
                        width: 90,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:[ 
                              InkWell(child: Icon(Icons.arrow_back_ios,color: Colors.white,size: 17,),
                              onTap: () {
                                descrementCount2();
                              },
                              ),
                      Text('$count2',style: TextStyle(fontFamily: 'rb',color: Colors.white,fontSize: 16),),
                      InkWell(child: Icon(Icons.arrow_forward_ios,color: Colors.white,size: 17,),
                      onTap: () {
                          incrementCount2();
                      },
                      ),
                      ]),
                        ),
                      ),
                       
                    
                      SizedBox(
                        width: 45,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:[  Text('ريال',style: TextStyle(fontFamily: 'rb',color: Colors.white,fontSize: 10),),
                       const Text('600',style: TextStyle(fontFamily: 'rb',color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                      ])),
                    
                      SizedBox(
                        width: 108,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:[ const Text('تذكرة النوع الثالث',style: TextStyle(fontFamily: 'rb',color: Colors.white,fontSize: 12),),
                      SvgPicture.asset('images/cash.svg'),
                      ])),
                      
                    
                ],),
              ),
                    ),
                     ),
                     const SizedBox(height: 8,),
                     Padding(
               padding: const EdgeInsets.symmetric(horizontal: 12),
               child: Container(
                height: 35,
                width: screenSize.width,
              decoration: BoxDecoration(
                    color: const Color(0xff010037),
                    borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      SizedBox(
                        width: 90,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:[ 
                              InkWell(child: Icon(Icons.arrow_back_ios,color: Colors.white,size: 17,),
                              onTap: () {
                                descrementCount3();
                              },
                              ),
                      Text('$count3',style: TextStyle(fontFamily: 'rb',color: Colors.white,fontSize: 16),),
                      InkWell(child: Icon(Icons.arrow_forward_ios,color: Colors.white,size: 17,),
                      onTap: () {
                          incrementCount3();
                      },
                      ),
                      ]),
                        ),
                      ),
                       
                    
                      SizedBox(
                        width: 45,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:[  Text('ريال',style: TextStyle(fontFamily: 'rb',color: Colors.white,fontSize: 10),),
                       const Text('800',style: TextStyle(fontFamily: 'rb',color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                      ])),
                    
                      SizedBox(
                        width: 106,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:[ const Text('تذكرة النوع الرابع',style: TextStyle(fontFamily: 'rb',color: Colors.white,fontSize: 12),),
                      SvgPicture.asset('images/cash.svg'),
                      ])),
                      
                    
                ],),
              ),
                    ),
                     ),
                     const SizedBox(height: 8,),
                     Padding(
               padding: const EdgeInsets.symmetric(horizontal: 12),
               child: Container(
                height: 35,
                width: screenSize.width,
              decoration: BoxDecoration(
                    color: const Color(0xff010037),
                    borderRadius: BorderRadius.circular(5),
              ),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                      SizedBox(
                        width: 90,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children:[ 
                              InkWell(child: Icon(Icons.arrow_back_ios,color: Colors.white,size: 17,),
                              onTap: () {
                                descrementCount4();
                              },
                              ),
                      Text('$count4',style: TextStyle(fontFamily: 'rb',color: Colors.white,fontSize: 16),),
                      InkWell(child: Icon(Icons.arrow_forward_ios,color: Colors.white,size: 17,),
                      onTap: () {
                          incrementCount4();
                      },
                      ),
                      ]),
                        ),
                      ),
                       
                    
                      SizedBox(
                        width: 55,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:[  Text('ريال',style: TextStyle(fontFamily: 'rb',color: Colors.white,fontSize: 10),),
                       const Text('1000',style: TextStyle(fontFamily: 'rb',color: Colors.white,fontSize: 16,fontWeight: FontWeight.bold),),
                      ])),
                    
                      SizedBox(
                        width: 118,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children:[ const Text('تذكرة النوع الخامس',style: TextStyle(fontFamily: 'rb',color: Colors.white,fontSize: 12),),
                      SvgPicture.asset('images/cash.svg'),
                      ])),
                      
                    
                ],),
              ),
                    ),
                     ),
                     const SizedBox(height: 20,),
                     Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                       child: Column(
                         children:[ Padding(
                         padding: const EdgeInsets.symmetric(horizontal: 20),
                         child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
                         children:  [
                         Padding(
                                      padding: EdgeInsets.only(left: 12),
                                      child: Text('5',style: TextStyle(fontFamily: 'rb',fontWeight: FontWeight.bold,fontSize: 16),),
                         ),
                         Text('عدد التذاكر الكلي',style: TextStyle(fontFamily: 'rb',fontSize:12),),
                                         
                                         
                                      ],),
                         ),
                    
                     Padding(
               padding: const EdgeInsets.symmetric(horizontal: 17),
               child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children:  const [
               Text('1000',style: TextStyle(fontFamily: 'rb',fontWeight: FontWeight.bold,fontSize: 16),),
               Text('أجمالي المبلغ',style: TextStyle(fontFamily: 'rb',fontSize:12),),
              ],),
                     ),
                     Padding(
               padding: const EdgeInsets.symmetric(horizontal: 12),
               child: Row(
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: const [
               Padding(
                 padding: EdgeInsets.only(left: 10),
                 child: Text('150',style: TextStyle(fontFamily: 'rb',fontWeight: FontWeight.bold,fontSize: 16),),
               ),
               Text('(%15)طريقة القيمة المضافة',style: TextStyle(fontFamily: 'rb',fontSize:12),),
               
                    ]),
                    ),
                    const Divider(endIndent: 16,indent: 16,color: Color(0xff010037),thickness: 0.5,),
                     Padding(
               padding: const EdgeInsets.symmetric(horizontal: 16),
               child: Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: const [
                 Padding(
                   padding: EdgeInsets.only(left: 3),
                   child: Text('1500',style: TextStyle(fontFamily: 'rb',fontWeight: FontWeight.bold,fontSize: 16),),
                 ),
                 Text('المبلغ النهائي بعد الضريبة',style: TextStyle(fontFamily: 'rb',fontSize:12,fontWeight: FontWeight.bold,),),
                 
                    ]),
                     ),
                     ]),
                     ),
                     const SizedBox(height: 20,),
                     Padding(
                       padding: const EdgeInsets.symmetric(horizontal: 10),
                       child: InkWell(
                         child: Container(
                          height: 40,
                          width: screenSize.width,
                                     decoration: BoxDecoration(
                                           color: const Color(0xff010037),
                                           borderRadius: BorderRadius.circular(5),
                                     ),
                                     child: const Center(child: Padding(
                                           padding: EdgeInsets.symmetric(vertical: 8),
                                           child: Text('إكمال بيع التذاكر',style: TextStyle(fontFamily: 'rb',fontSize:16,fontWeight: FontWeight.bold,color: Color(0xff25E0B1)),),
                                     )),
                                     ),
                                     onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context)=>PaymentPage()));
                                     },
                       ),
                     ),
              const SizedBox(height: 5,),
              
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  
                  children:[ Expanded(
                    child: Container(
                      height: 40,
                      width: 121,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Color(0xff1384AD)),
                      child: Center(child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:[ Text('فاتورة الطلبات', style: TextStyle(fontFamily: 'rb',fontSize: 12,color: Colors.white),),
                      SizedBox(width: 5,),
                      SvgPicture.asset('images/paper.svg')
                      ])),
                    ),
                  ),
                  SizedBox(width: 5,),
                  Expanded(
                    child: Container(
                      height: 40,
                      width: 121,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Color(0xffFDB02A)),
                      child: Center(child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children:[ Text('تعليق الفاتورة', style: TextStyle(fontFamily: 'rb',fontSize: 12,color: Colors.white),),
                      SizedBox(width: 5,),
                      SvgPicture.asset('images/hand.svg',)
                      ])),
                    ),
                  ),
                  SizedBox(width: 5,),
                  Expanded(
                    child: Container(
                      height: 40,
                      width: 123,
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(5),color: Color(0xffAC0000)),
                      child: Center(child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [ Text('مسح/الغاء', style: TextStyle(fontFamily: 'rb',fontSize: 12,color: Colors.white),),
                      SizedBox(width: 5,),
                      SvgPicture.asset('images/cancel.svg')
                      ])),
                    ),
                  ),
                      ]),
              ),
              SizedBox(height: 20,),
                    ]),
),
          ),
      ), 
      
      ],),
    );
  }
}


