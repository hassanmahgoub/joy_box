// ignore_for_file: file_names, non_constant_identifier_names, valid_regexps, prefer_const_constructors, unused_local_variable, deprecated_member_use, camel_case_types, avoid_print, body_might_complete_normally_nullable, prefer_typing_uninitialized_variables, unused_import, unused_field

import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:quickalert/quickalert.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../widgets/NavigationBar.dart';
import 'Home.dart';
import 'PasswordRemember.dart';

class loginPage extends StatefulWidget {
const loginPage({ Key? key, required  }) : super(key: key);

  @override
  State<loginPage> createState() => _HomePageState();
}

class _HomePageState extends State<loginPage> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  
  final formKey=GlobalKey<FormState>();
  
  final GlobalKey<FormState> _globalKey =GlobalKey();
  var email;
  var password;

  @override
  Widget build(BuildContext context) {
        final screenSize = MediaQuery.of(context).size;

        final GlobalKey<ScaffoldState> ScaffoldKey =GlobalKey<ScaffoldState>();

    return  Scaffold(
      key: ScaffoldKey,
      
      body: Stack(
        children:[
          
          Container(
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(1.0, -1.0),
                end: Alignment(-0.602, -0.252),
                colors: const [ Color(0xffffffff), Color(0x1a25e0b1)],
                stops: const [0.0, 1.0],
              ),
            ),
          ),
          
  SingleChildScrollView(
    child: Column(children:[ 
      SvgPicture.asset('images/Taieri.svg',width: screenSize.width,),
             SafeArea(
            child: Container(padding: EdgeInsets.symmetric(horizontal: 20),
            child: Form(
            key: formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
              SizedBox(height: 50,),
              Container(
                
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5)
                ),
                
                height: 45,
                child: TextFormField(
                  onTap: () async{
                     SharedPreferences _prefs = await SharedPreferences.getInstance();
                                  _prefs.setString('E', _emailController.text);
                                  _prefs.setString('P', _passwordController.text);
                                  print(_emailController);
                                },
                  
                  keyboardType: TextInputType.emailAddress,
                  onSaved: (value) {
                    email = value;
                  }, 
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff25E0B1)),
                      borderRadius: BorderRadius.circular(5),),
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
              SizedBox(height: 10,),
              Container(
                height: 45,
                decoration: BoxDecoration(color: Colors.white,
                borderRadius: BorderRadius.circular(5),
                
                ),
                
                child: TextFormField(
                  keyboardType: TextInputType.visiblePassword,
                  onSaved: (value) {
                    password = value;
                  },
                  decoration: InputDecoration(
                    
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Color(0xff25E0B1)),
                      borderRadius: BorderRadius.circular(5),),
                    
                    enabledBorder: OutlineInputBorder(
                      
                      borderSide: BorderSide(color: Color(0xff25E0B1)),
                      borderRadius: BorderRadius.circular(5),),
                    
                      border: OutlineInputBorder(borderSide: BorderSide.none),
                    label:Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:const [ Text('كلمة المرور', style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold,color: Color(0xff2E1C59),),)]),
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
              SizedBox(height: 10,),
              ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: MaterialButton(
                  height: 45,
                  minWidth: screenSize.width,
                  color: Color(0xff25E0B1),
                  child: Text('دخول',style: TextStyle(color: Color(0xff010037),fontFamily: 'rb',fontWeight: FontWeight.bold),),
                  onPressed: (){
                    //_saveData();
                  if(formKey.currentState!.validate()){
                    
                    final snackBar= SnackBar(content: Text('Welcome',textAlign: TextAlign.center,));
                     QuickAlert.show(
                      
                      confirmBtnColor: Color(0xff25E0B1),
                      onConfirmBtnTap: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>HomePage()));
                      },
                      context: context, type: QuickAlertType.success,
                     confirmBtnTextStyle: 
                     
                     TextStyle(
                      fontFamily: 'rb',color: Colors.white,fontWeight: FontWeight.bold)                    
                     );
                    }
                   }
                
                ),
              ),
              SizedBox(height: 5,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children:  [
                InkWell(child: Text('استعادة',style: TextStyle(color: Color(0xff25E0B1),fontFamily: 'rb',fontSize: 11),),
                onTap: () {
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>PasswordRemember()));
                },
                ),
                SizedBox(width: 5,),
                Text('نسيت كلمة المرور ؟',style: TextStyle(color: Color(0xff010037),fontFamily: 'rb',fontSize: 11),),
              ],)
          ]),
        
            ),
          
          ),
             ), 
          ]),
  )
        ])
    );
  }
  
  // void _saveData() async{
  //    GlobalKey.currentState.save();
  // SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
  // }
}


    