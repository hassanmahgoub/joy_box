// ignore_for_file: prefer_const_constructors, use_full_hex_values_for_flutter_colors

import 'dart:io';

import 'package:flutter/material.dart';

enum DialogAction{yes,cancel}
class AlertDialogs {
  static Future<DialogAction> yesCancelDialog(
    BuildContext context,
    String title, String s,
    //String body,
  )async{
    final action = await showDialog(
      context: context,
      builder: (BuildContext context){
      return AlertDialog(
        
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
        title: Center(child: Text(title,style: TextStyle(fontSize: 15, fontFamily: 'rb',fontWeight: FontWeight.bold),)),
      //content:  Text(body),
      actions: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                height: 40,
                decoration: BoxDecoration(color: Color(0xff0010037),
                borderRadius: BorderRadius.circular(5)
                ),
                child: TextButton(onPressed: (){
                  Navigator.of(context).pop(DialogAction.cancel);
                }, child: Text('إلغاء',style: TextStyle(fontFamily: 'rb',fontSize: 15,fontWeight: FontWeight.bold,color: Color(0xff25E0B1)),),
                
                ),
              ),
            ),
            SizedBox(width: 2,),
            Expanded(
              child: Container(
                height: 40,
                decoration: BoxDecoration(color: Color(0xff0010037),
                borderRadius: BorderRadius.circular(5)),
                child: TextButton(onPressed: (){
                     
                      exit(0);
                    }, child: Text('تأكيد',style: TextStyle(fontFamily: 'rb',fontSize: 15,fontWeight: FontWeight.bold,color: Color(0xff25E0B1)),),
                    
                    ),
              ),
            ),
          ],
        ),
        
      ], 
      );
      
    });
    return(action!=null)? action:DialogAction.cancel;
  }
}