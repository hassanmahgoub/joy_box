// ignore_for_file: file_names, prefer_const_constructors, avoid_relative_lib_imports, prefer_final_fields, unused_local_variable, deprecated_member_use, avoid_print, non_constant_identifier_names, body_might_complete_normally_nullable, unused_import
import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/Home.dart';
import 'package:flutter_svg/svg.dart';
import '../widgets/alert_dialog.dart';
import '../widgets/NavigationBar.dart';
import 'Profile.dart';
import 'loginPage.dart';
class PasswerdChange extends StatefulWidget {
  const PasswerdChange({ Key? key }) : super(key: key);

  @override
  State<PasswerdChange> createState() => _PasswerdChangeState();
}

class _PasswerdChangeState extends State<PasswerdChange> {
final formKey=GlobalKey<FormState>();

  int currentIndex=0;
  late String name;
  GlobalKey<ScaffoldState>_globalKey=GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
  final GlobalKey<ScaffoldState> ScaffoldKey =GlobalKey<ScaffoldState>();

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
             
        ]),),
      // bottomNavigationBar: BottomAppBar(
      //   color: Color(0xff010037),
      //   elevation: 0,
        
      //   child: Container(
      //     height: 60,
      //     width: screenSize.width,
      //     decoration: BoxDecoration(color: Color(0xff010037),borderRadius: BorderRadius.only(topLeft: Radius.circular(0),topRight: Radius.circular(0))),
      //   child: Padding(
      //     padding: const EdgeInsets.symmetric(horizontal: 60,),
      //     child: Padding(
      //       padding: const EdgeInsets.only(top: 20),
      //       child: Row(
      //         crossAxisAlignment: CrossAxisAlignment.center,
      //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
      //         children: [
      //         InkWell(
      //           child: Column(children: [
      //             SvgPicture.asset('images/power.svg'),
      //             Text('خروج',style: TextStyle(color: Color(0xff25E0B1),fontFamily: 'rb',fontWeight: FontWeight.bold,fontSize: 9),)
      //           ],),
      //         onTap: () async {
      //                                 final action= await AlertDialogs.yesCancelDialog(context,'Logout','are you sure?');

      //         },
      //         ),
      //         InkWell(
      //           child: Column(children: [
      //             SvgPicture.asset('images/person 1.svg'),
      //             Text('حسابي',style: TextStyle(color: Color(0xff25E0B1),fontFamily: 'rb',fontWeight: FontWeight.bold,fontSize: 9),)
      //           ],),
      //           onTap: () {
      //             Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
      //           },
      //         ),
      //         InkWell(
      //           child: Column(children: [
      //             SvgPicture.asset('images/hom.svg'),
      //             Text('الرئيسية',style: TextStyle(color: Color(0xff25E0B1),fontFamily: 'rb',fontWeight: FontWeight.bold,fontSize: 9),)
      //           ],),
      //           onTap: () {
      //             Navigator.push(context, MaterialPageRoute(builder: (context)=>HomePage()));
      //           },
      //         )
      //       ],),
      //     ),
      //   ),
      //   ),),
        
      

      body:
      
       Stack(
        children: [
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
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Profile()));
                        }, icon: Icon(Icons.arrow_back_ios)),
                      IconButton(
                                  onPressed: (){
                                    _globalKey.currentState!.openDrawer();
                                  },
                                  icon: const Icon(Icons.menu_rounded,size: 30,),),
                                  
                      ],),
                    ),
                    SizedBox(height: 50,),
                    Center(child: Text('تغيير كلمة المرور',style: TextStyle(color: Color(0xff010037),fontFamily: 'rb',fontWeight: FontWeight.bold,fontSize: 16),)),
                    SizedBox(height: 10,),
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
                    keyboardType: TextInputType.visiblePassword,
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
                        children:const [ Text('كلمة المرور الجديدة', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,color: Color(0xff2E1C59),fontFamily: 'rb'),)]),
                    ),
                    
                    validator: (value){
                      if(value!.isEmpty ||!RegExp(r'[!@#$%^&*(),.?":{}|<>]').hasMatch(value)){ 
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
                              child: Center(child: Text('تغيير',style: TextStyle(color: Color(0xff25E0B1),fontFamily: 'rb',fontWeight: FontWeight.bold),)),
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
              ],),
            ),
          ),
        ),
        
      ],),
      
    );
  }
}