// ignore_for_file: prefer_const_constructors, file_names, prefer_final_fields, unused_import, avoid_relative_lib_imports, unused_local_variable, non_constant_identifier_names, deprecated_member_use, avoid_print, body_might_complete_normally_nullable, unnecessary_import

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/NavigationBar.dart';
import 'loginPage.dart';

class PasswordRemember extends StatefulWidget {
  const PasswordRemember({ Key? key }) : super(key: key);

  @override
  State<PasswordRemember> createState() => _PasswordRememberState();
}

class _PasswordRememberState extends State<PasswordRemember> {
  final formKey=GlobalKey<FormState>();
   GlobalKey<ScaffoldState>_globalKey=GlobalKey<ScaffoldState>();
        

  @override
  Widget build(BuildContext context) {
            final GlobalKey<ScaffoldState> ScaffoldKey =GlobalKey<ScaffoldState>();


    final screenSize =MediaQuery.of(context).size;
    return Scaffold(
      key: ScaffoldKey,
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
      
      body: Stack(children: [
        Container(
    decoration: BoxDecoration(
      gradient: LinearGradient(
        begin: Alignment(1.0, -1.0),
        end: Alignment(-0.602, -0.252),
        colors: const [ Color(0xffffffff),  Color(0x1a25e0b1)],
        stops: const[0.0, 1.0],
      ),
    ),
  ),
  SafeArea(
    child: Form(
      key: formKey,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
        Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                        IconButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>loginPage()));
                        }, icon: Icon(Icons.arrow_back_ios)),
                      IconButton(
                                  onPressed: (){
                                    _globalKey.currentState!.openDrawer();
                                  },
                                  icon: const Icon(Icons.menu_rounded,size: 30,),),
                                  
                      ],),
                    ),
                    SizedBox(height: 50,),
                    Center(child: Text('استعادة كلمة المرور',style: TextStyle(color: Color(0xff010037),fontFamily: 'rb',fontWeight: FontWeight.bold,fontSize: 16),)),
                    SizedBox(height: 10,),
    
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)
                  ),
                  
                  height: 45,
                  child: TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff25E0B1)),
                        borderRadius: BorderRadius.circular(5)),
                      enabledBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff25E0B1)),
                        borderRadius: BorderRadius.circular(5)),
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                      
                    label: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:const [ Text('البريد الالكتروني', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,color: Color(0xff2E1C59),),)])
                    ),
                    validator: (value){
                      if(value!.isEmpty ||!RegExp(r'(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$)').hasMatch(value)){
                                              return 'incorrect';
    
                      }else{
                        print(value);
                      }
                    },
                  ),
                ),
                    ),
                    SizedBox(height: 10,),
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
                        child: const Center(child: Padding(
                              padding: EdgeInsets.symmetric(vertical: 8),
                              child: Text('استعادة كلمة المرور',style: TextStyle(fontFamily: 'rb',fontSize:16,fontWeight: FontWeight.bold,color: Color(0xff25E0B1)),),
                              
                        )),
                        ),
                        onTap: (){
                          if(formKey.currentState!.validate()){
                      final snackBar= SnackBar(content: Text('Welcome ',textAlign: TextAlign.center,));
                      //ScaffoldKey.currentState!.showSnackBar(snackBar);
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>loginPage()));
                        }},
                ),
              ),
              
      ],),
    ),
  ),
  
      ],),
    );
  }
}