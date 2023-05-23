import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:notification/auth/screen/notification.dart';
import 'package:notification/utils/colors.dart';
import 'package:sizer/sizer.dart';

import '../../utils/navigation.dart';
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(

        backgroundColor: kwhite,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                
              Container(height: MediaQuery.of(context).size.height*0.54,
              decoration: BoxDecoration(borderRadius: BorderRadius.only(topLeft: Radius.circular(40),topRight: Radius.circular(40),),color: kblue,),
              margin: EdgeInsets.only(top: 330),
              child: Column(children: [
                
                 Container(margin: EdgeInsets.only(top: 36,left: 20,right: 20),
                  height: 6.h,
                  width: 54.w, 
                  decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: korange),
                  child: Center(child: Text('DEPARTMENTAL ADMIN',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500,color: kwhite),)),),
                  SizedBox(height: 3.h,),
                  Container(
                  decoration: BoxDecoration(
                     border: Border.all(width: 1,color: kgrey),
                      color: kwhite,
                      borderRadius: BorderRadius.circular(26)),
                  margin: const EdgeInsets.symmetric(
                      horizontal: 20, vertical: 4),
                  child: Container(margin: EdgeInsets.only(left: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "ID",
                        hintStyle: TextStyle(fontSize: 18),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                ),
               
                  
                   SizedBox(height: 3.h,),
                  Container(
                  decoration: BoxDecoration(
                     border: Border.all(width: 1,color: kgrey),
                      color: kwhite,
                      borderRadius: BorderRadius.circular(26)),
                  margin: const EdgeInsets.symmetric(
                      horizontal: 20, vertical: 4),
                  child: Container(margin: EdgeInsets.only(left: 10),
                    child: TextFormField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Password",
                        hintStyle: TextStyle(fontSize: 18),
                      ),
                      keyboardType: TextInputType.emailAddress,
                    ),
                  ),
                ),
                
                    SizedBox(height: 3.h,),
                Container(padding: EdgeInsets.only(left: 30),
                  child: Align(alignment: Alignment.bottomLeft,
                  child: Text('Forget Password?'))),
               
                SizedBox(height: 3.h,),
                 InkWell(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Navigationthree(),));
                 },
                   child: Container(margin: EdgeInsets.only(left: 20,right: 20),
                    height: 6.h,
                    width: 44.w, 
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: korange),
                    child: Center(child: Text('Login',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500,color: kwhite),)),),
                 ),
                  
                 
              ],),
              ),
              Container(padding: EdgeInsets.only(top: 160,right: 0),
                   child:  Image(height: 20.h,
                   width: MediaQuery.of(context).size.width,
                    image: AssetImage('assets/boy.png'))
                
                 ),
                Image(height: 20.h,
              width: MediaQuery.of(context).size.width,
              fit: BoxFit.cover,
                image: AssetImage('assets/image.png')),
            ],),
          ],
        ),
      ),
      ),
    );
  }
}