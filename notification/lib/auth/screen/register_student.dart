import 'package:buttons_tabbar/buttons_tabbar.dart';
import 'package:flutter/material.dart';
import 'package:notification/auth/screen/document_screen.dart';
import 'package:sizer/sizer.dart';


import '../../utils/colors.dart';
class RegisterStudent extends StatefulWidget {
  const RegisterStudent({super.key});

  @override
  State<RegisterStudent> createState() => _RegisterStudentState();
}

class _RegisterStudentState extends State<RegisterStudent> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(body: SingleChildScrollView(
        child: Column(children: [
          Stack(children: [
            Image(height: 20.h,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.cover,
            image: AssetImage('assets/image.png')),
            Container(margin: EdgeInsets.only(top: 10,left: 10),
              child: CircleAvatar(
                                          backgroundColor: Colors.black,
                                          radius: 30,
                                          child: CircleAvatar(
                                            radius: 110,
                                            backgroundImage: AssetImage('assets/boy.png'),
                                          ),
                                        ),
            ),
            
            InkWell(onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => DocumentScreen(),));
            },
              child: Column(children: [
                 Center(
                   child: Container(margin: EdgeInsets.only(top: 150),
                        height: 6.h,
                        width: 54.w, 
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: korange),
                        child: Center(child: Text('REGISTERED STUDENT',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500,color: kwhite),)),),
                 ),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Container(height: 70.h,
                    // color: kblue,
                            child: DefaultTabController(
                              length: 3,
                              child: Column(
                              
                    children: <Widget>[
                      Container(width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: kwhite),
                        child: ButtonsTabBar(
                          backgroundColor: kgrey,
                          unselectedBackgroundColor:kwhite,
                          unselectedLabelStyle: TextStyle(color: Colors.black),
                          labelStyle:
                              TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
                          tabs: [
                            Tab(
                              
                              text: "semester",
                              icon: Icon(Icons.arrow_drop_up),
                            ),
                            Tab(
                              //icon: Icon(Icons.directions_transit),
                              text: "Section",
                               icon: Icon(Icons.arrow_drop_up),
                            ),
                            Tab( text: "Department",
                             icon: Icon(Icons.arrow_drop_up),
                            ),
                            
                            // Tab(icon: Icon(Icons.directions_car)),
                            // Tab(icon: Icon(Icons.directions_transit)),
                            // Tab(icon: Icon(Icons.directions_bike)),
                          ],
                        ),
                      ),
                      Container(color: kblue,
                      height: 60.h,
                        child: Expanded(
                          child: TabBarView(
                            children: <Widget>[
                              
                              Container(
                             // width: MediaQuery.of(context).size.width,
                               // decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: kwhite),
                                child: Column(children: [
                                  SizedBox(height: 2.h,),
                                  Container(margin: EdgeInsets.only(left: 10),
                                    child: Row(
                                      children: [
                                         Icon(Icons.person,size: 30,),
                                          SizedBox(width: 2.w,),
                                        Text('Name',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                                       
                                      ],
                                    ),
                                  ),

                                   SizedBox(height: 2.h,),
                                   Container(margin: EdgeInsets.only(left: 10),
                                     child: Row(
                                      children: [
                                         Icon(Icons.person,size: 30,),
                                          SizedBox(width: 2.w,),
                                        Text('Name',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                                       
                                      ],
                                                                     ),
                                   ),
                                   SizedBox(height: 2.h,),
                                  Container(margin: EdgeInsets.only(left: 10),
                                    child: Row(
                                      children: [
                                         Icon(Icons.person,size: 30,),
                                          SizedBox(width: 2.w,),
                                        Text('Name',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                                       
                                      ],
                                    ),
                                  ),
                                   SizedBox(height: 2.h,),
                                   Container(margin: EdgeInsets.only(left: 10),
                                     child: Row(
                                      children: [
                                         Icon(Icons.person,size: 30,),
                                          SizedBox(width: 2.w,),
                                        Text('Name',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                                       
                                      ],
                                                                     ),
                                   ),
                                   SizedBox(height: 2.h,),
                                   Container(margin: EdgeInsets.only(left: 10),
                                     child: Row(
                                      children: [
                                         Icon(Icons.person,size: 30,),
                                         SizedBox(width: 2.w,),
                                        Text('Name',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                                       
                                      ],
                                                                     ),
                                   ),
                                ],),
                                ),
                               Container(
                             // width: MediaQuery.of(context).size.width,
                               // decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: kwhite),
                                child: Column(children: [
                                  SizedBox(height: 2.h,),
                                  Container(margin: EdgeInsets.only(left: 10),
                                    child: Row(
                                      children: [
                                         Icon(Icons.person,size: 30,),
                                          SizedBox(width: 2.w,),
                                        Text('Name',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                                       
                                      ],
                                    ),
                                  ),

                                   SizedBox(height: 2.h,),
                                   Container(margin: EdgeInsets.only(left: 10),
                                     child: Row(
                                      children: [
                                         Icon(Icons.person,size: 30,),
                                          SizedBox(width: 2.w,),
                                        Text('Name',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                                       
                                      ],
                                                                     ),
                                   ),
                                   SizedBox(height: 2.h,),
                                  Container(margin: EdgeInsets.only(left: 10),
                                    child: Row(
                                      children: [
                                         Icon(Icons.person,size: 30,),
                                          SizedBox(width: 2.w,),
                                        Text('Name',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                                       
                                      ],
                                    ),
                                  ),
                                   SizedBox(height: 2.h,),
                                   Container(margin: EdgeInsets.only(left: 10),
                                     child: Row(
                                      children: [
                                         Icon(Icons.person,size: 30,),
                                          SizedBox(width: 2.w,),
                                        Text('Name',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                                       
                                      ],
                                                                     ),
                                   ),
                                   SizedBox(height: 2.h,),
                                   Container(margin: EdgeInsets.only(left: 10),
                                     child: Row(
                                      children: [
                                         Icon(Icons.person,size: 30,),
                                         SizedBox(width: 2.w,),
                                        Text('Name',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                                       
                                      ],
                                                                     ),
                                   ),
                                ],),
                                ),
                             Container(
                             // width: MediaQuery.of(context).size.width,
                               // decoration: BoxDecoration(borderRadius: BorderRadius.circular(10),color: kwhite),
                                child: Column(children: [
                                  SizedBox(height: 2.h,),
                                  Container(margin: EdgeInsets.only(left: 10),
                                    child: Row(
                                      children: [
                                         Icon(Icons.person,size: 30,),
                                          SizedBox(width: 2.w,),
                                        Text('Name',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                                       
                                      ],
                                    ),
                                  ),

                                   SizedBox(height: 2.h,),
                                   Container(margin: EdgeInsets.only(left: 10),
                                     child: Row(
                                      children: [
                                         Icon(Icons.person,size: 30,),
                                          SizedBox(width: 2.w,),
                                        Text('Name',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                                       
                                      ],
                                                                     ),
                                   ),
                                   SizedBox(height: 2.h,),
                                  Container(margin: EdgeInsets.only(left: 10),
                                    child: Row(
                                      children: [
                                         Icon(Icons.person,size: 30,),
                                          SizedBox(width: 2.w,),
                                        Text('Name',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                                       
                                      ],
                                    ),
                                  ),
                                   SizedBox(height: 2.h,),
                                   Container(margin: EdgeInsets.only(left: 10),
                                     child: Row(
                                      children: [
                                         Icon(Icons.person,size: 30,),
                                          SizedBox(width: 2.w,),
                                        Text('Name',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                                       
                                      ],
                                                                     ),
                                   ),
                                   SizedBox(height: 2.h,),
                                   Container(margin: EdgeInsets.only(left: 10),
                                     child: Row(
                                      children: [
                                         Icon(Icons.person,size: 30,),
                                         SizedBox(width: 2.w,),
                                        Text('Name',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500),),
                                       
                                      ],
                                                                     ),
                                   ),
                                ],),
                                ),
                            
                            ],
                          ),
                        ),
                      ),
                  
                  
                    ],
                              ),
                            ),
                          ),
                  ),
                       
                       
              ],),
            )
          ],)
        ],),
      ),),
    );
  }
}