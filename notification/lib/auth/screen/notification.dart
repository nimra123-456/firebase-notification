import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:notification/auth/screen/message.dart';
import 'package:sizer/sizer.dart';

import '../../utils/colors.dart';
class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
   String _fileText="";
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SingleChildScrollView(
      child: Column(children: [
        Image(height: 20.h,
        width: MediaQuery.of(context).size.width,
        fit: BoxFit.cover,
          image: AssetImage('assets/image.png')),
         Center(
           child: Container(
                      height: 6.h,
                      width: 54.w, 
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: korange),
                      child: Center(child: Text('NOTIFICATION',style: TextStyle(fontSize: 13,fontWeight: FontWeight.w500,color: kwhite),)),),
         ),
         SizedBox(height: 2.h,),
         Container(
                      height: 6.h,
                      width: 80.w, 
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: korange),
                      child: Container(margin: EdgeInsets.only(top: 12,left: 10),
                        child: Text('Select',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color: kblack),)),),
              SizedBox(height: 1.h,),
        
         Container(margin: EdgeInsets.only(left: 38),
          child: Align(alignment: Alignment.bottomLeft,
          child: Text('Enter Message',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: kblack),)),),
         
         
          Container(height: 20.h,
                    decoration: BoxDecoration(
                       //border: Border.all(width: 1,color: kgrey),
                        color: korange,
                        borderRadius: BorderRadius.circular(26)),
                    margin: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 4),
                    child: Container(margin: EdgeInsets.only(left: 10),
                      child: TextFormField(
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          //hintText: "P",
                          hintStyle: TextStyle(fontSize: 18),
                        ),
                        keyboardType: TextInputType.emailAddress,
                      ),
                    ),
                  ),
                   Container(margin: EdgeInsets.only(left: 38),
          child: Align(alignment: Alignment.bottomLeft,
          child: Text('Upload file',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w600,color: kblack),)),),
    
          Container(height: 22.h,
          width: 90.w,
                    decoration: BoxDecoration(
                       //border: Border.all(width: 1,color: kgrey),
                        color: kgrey,
                        borderRadius: BorderRadius.circular(26)),
                    margin: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 4),
                    child: Container(margin: EdgeInsets.only(left: 10),
                      child: TextButton(onPressed: (){
                        _pickfile();
                      }, child: Column(
                        children: [
                          Image(image: AssetImage("assets/file.png")),
                          Text(_fileText)
                        ],
                      ))
                    ),
                  ),
                   SizedBox(height: 1.h,),
                  InkWell(onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => MessageScreen(),));
                  },
                    child: Container(margin: EdgeInsets.only(left: 170),
                        height: 5.h,
                        width: 36.w, 
                        decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: korange),
                        child: Center(child: Text('Send file',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: kwhite),)),),
                  ),
      ],),
    ),);
  }
  void _pickfile()async{
  FilePickerResult?result=await FilePicker.platform.pickFiles();
  if(result!=null&&result.files.single.path!=null){
    PlatformFile file=result.files.first;
    print(file.name);
    print(file.bytes);
    print(file.size);
    print(file.extension);
    print(file.path);
    File _file=File(result.files.single.path!);
    setState(() {
      _fileText=file.path!;
    });
  }else{

  }
}
}