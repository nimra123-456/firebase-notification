import 'package:flutter/material.dart';
import 'package:notification/auth/screen/register_student.dart';
class MessageScreen extends StatefulWidget {
  const MessageScreen({super.key});

  @override
  State<MessageScreen> createState() => _MessageScreenState();
}

class _MessageScreenState extends State<MessageScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(body: SingleChildScrollView(
      child: Column(children: [
           Container(height: MediaQuery.of(context).size.height,
                             child: ListView.builder(itemCount: 6,
                                     itemBuilder: (context,index){
                                      // final Product=filterProducts[index];
                               return 
                              InkWell(onTap: () {
                               // Navigator.push(context, MaterialPageRoute(builder: (context) => RegisterStudent(),));
                              },
                                child: Column(children: [Card(child: Column(children: [
                                  Row(children: [
                                    Container(padding: EdgeInsets.all(10),
                                      child: CircleAvatar(
                                      backgroundColor: Colors.black,
                                      radius: 30,
                                      child: CircleAvatar(
                                        radius: 110,
                                        backgroundImage: AssetImage('assets/boy.png'),
                                      ),
                                    ),
                                    ),
                                    Text('Message')
                                  ],)
                                ],),)],),
                              );
                             
                                   }),
                   ),
                 
      ],),
    ),);
  }
}