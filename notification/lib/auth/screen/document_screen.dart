import 'package:flutter/material.dart';
import 'package:notification/utils/colors.dart';
import 'package:sizer/sizer.dart';
class DocumentScreen extends StatefulWidget {
  const DocumentScreen({super.key});

  @override
  State<DocumentScreen> createState() => _DocumentScreenState();
}

class _DocumentScreenState extends State<DocumentScreen> {
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
                  Container(margin: EdgeInsets.only(top: 20,left: 20),
                    height: 4.h,
                  width: 7.w,
                    decoration: BoxDecoration(borderRadius: BorderRadius.circular(50),color: Color.fromARGB(255, 52, 51, 51)),
                    child: Icon(Icons.arrow_back_ios_rounded,size: 10,))
          ],),
          SizedBox(height: 4.h,),
        Container(height: 50.h,

                    decoration: BoxDecoration(
                       //border: Border.all(width: 1,color: kgrey),
                        color: kwhite,
                        borderRadius: BorderRadius.circular(26)),
                    margin: const EdgeInsets.symmetric(
                        horizontal: 40, ),
                    child: Container(margin: EdgeInsets.only(left: 10),
                      child:Image(fit: BoxFit.cover,
                        image: AssetImage('assets/place.png'))
                    ),
                  ),
        Padding(
          padding: const EdgeInsets.only(top: 58),
          child: Image(height: 14.h,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
                  image: AssetImage('assets/img.png')),
        ),
        ],),
      ),),
    );
  }
}