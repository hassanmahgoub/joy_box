// ignore_for_file: file_names, prefer_const_constructors, prefer_const_literals_to_create_immutables, prefer_final_fields, unused_local_variable, unused_import, body_might_complete_normally_nullable, avoid_print
import 'package:flutter/material.dart';
import 'package:flutter_application_1/widgets/NavigationBar.dart';
import 'package:flutter_svg/svg.dart';

import '../widgets/alert_dialog.dart';
import 'Home.dart';
import 'Profile.dart';
class AddCustomr extends StatefulWidget {
  const AddCustomr({ Key? key }) : super(key: key);

  @override
  State<AddCustomr> createState() => _AddCustomrState();
}

class _AddCustomrState extends State<AddCustomr> {
  final formKey=GlobalKey<FormState>();

      GlobalKey<ScaffoldState>_globalKey=GlobalKey<ScaffoldState>();

  
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
     
     body: Stack(
       children:[ Container(
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
           child: Form(
            key: formKey,

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
              SizedBox(height: 50,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 22),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                  Text('إضافة زبون جديد',style: TextStyle(color: Color(0xff010037),fontFamily: 'rb',fontWeight: FontWeight.bold,fontSize: 15))
                ],),
              ),
                        SizedBox(height: 8,),
             
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                    height: 45,
                    decoration: BoxDecoration(color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    
                    ),
                    
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff25E0B1)),
                        borderRadius: BorderRadius.circular(5)),
                        enabledBorder: OutlineInputBorder(
                          
                          borderSide: BorderSide(color: Color(0xff25E0B1)),
                          borderRadius: BorderRadius.circular(5),),
                        
                          border: OutlineInputBorder(borderSide: BorderSide.none),
                        label:Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:const [ Text('الاسم الاول', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,color: Color(0xff2E1C59),fontFamily: 'rb'),)]),
                      ),
                      
                      validator: (value){
                        if(value!.isEmpty ||!RegExp(r'[a-zA-Z]+').hasMatch(value)){ 
                          return 'incorrect';
                        }else{
                          print(value);
                        }
                      },
                    ),
                  ),
              ),
                        SizedBox(height: 8,),
             
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                    height: 45,
                    decoration: BoxDecoration(color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    
                    ),
                    
                    child: TextFormField(
                      keyboardType: TextInputType.name,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff25E0B1)),
                        borderRadius: BorderRadius.circular(5)),
                        enabledBorder: OutlineInputBorder(
                          
                          borderSide: BorderSide(color: Color(0xff25E0B1)),
                          borderRadius: BorderRadius.circular(5),),
                        
                          border: OutlineInputBorder(borderSide: BorderSide.none),
                        label:Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:const [ Text('اسم العائلة', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,color: Color(0xff2E1C59),fontFamily: 'rb'),)]),
                      ),
                      
                      validator: (value){
                        if(value!.isEmpty ||!RegExp(r'[a-zA-Z]+').hasMatch(value)){ 
                          return 'incorrect';
                        }else{
                          print(value);
                        }
                      },
                    ),
                  ),
              ),
              SizedBox(height: 8,),
               Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                    height: 45,
                    decoration: BoxDecoration(color: Colors.white,
                    borderRadius: BorderRadius.circular(5),
                    
                    ),
                    
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                        focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Color(0xff25E0B1)),
                        borderRadius: BorderRadius.circular(5)),
                        enabledBorder: OutlineInputBorder(
                          
                          borderSide: BorderSide(color: Color(0xff25E0B1)),
                          borderRadius: BorderRadius.circular(5),),
                        
                          border: OutlineInputBorder(borderSide: BorderSide.none),
                        label:Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children:const [ Text('رقم الجوال', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,color: Color(0xff2E1C59),fontFamily: 'rb'),)]),
                      ),
                      
                      validator: (value){
                        if(value!.isEmpty ||!RegExp(r'^[\+]?[(]?[0-9]{3}[)]?[-\s\.]?[0-9]{3}[-\s\.]?[0-9]{4,6}$').hasMatch(value)){ 
                          return 'incorrect';
                        }else{
                          print(value);
                        }
                        }
                      
                    ),
                  ),
              ),
              SizedBox(height: 8,),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: InkWell(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0xff010037),
                      borderRadius: BorderRadius.circular(5)),
                              height: 45,
                              width: screenSize.width,
                              child: Center(child: Text('اضافة زبون',style: TextStyle(color: Color(0xff25E0B1),fontFamily: 'rb',fontWeight: FontWeight.bold),)),
                  ),
                   onTap: (){
                              if(formKey.currentState!.validate()){
                    final snackBar= SnackBar(content: Text('Welcome ',textAlign: TextAlign.center,));
                    //ScaffoldKey.currentState!.showSnackBar(snackBar);
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>Home()));
                   }
                  },
                ),
              ),
              SizedBox(height: 20,)
                       ],),
           ),
         ),
       ),
      
     ],),
      
    );
  }
}