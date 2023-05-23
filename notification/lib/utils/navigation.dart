import 'package:flutter/material.dart';

//import 'package:givealilbit/campaign.dart';
//import 'package:givealilbit/categories_screen.dart';

import 'package:molten_navigationbar_flutter/molten_navigationbar_flutter.dart';
import 'package:notification/auth/screen/login_screen.dart';
import 'package:notification/auth/screen/message.dart';
import 'package:notification/auth/screen/register_student.dart';
import 'package:notification/utils/colors.dart';

import '../auth/screen/notification.dart';

class Navigationthree extends StatefulWidget {
  const Navigationthree({super.key});

  @override
  State<Navigationthree> createState() => _NavigationthreeState();
}

class _NavigationthreeState extends State<Navigationthree> {
  int _selectedIndex = 0;
  final List<Widget> bottom_navigation_list = [
    NotificationScreen(),
    NotificationScreen(),
    MessageScreen(),
    RegisterStudent()
   
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: MoltenBottomNavigationBar(
        domeCircleColor: korange,
        barColor: korange,
          selectedIndex: _selectedIndex,
          domeHeight: 25,
          // specify what will happen when a tab is clicked
          onTabChange: (clickedIndex) {
            setState(() {
              _selectedIndex = clickedIndex;
            });
          },
          // ansert as many tabs as you like
          tabs: [
            MoltenTab(
              icon: Icon(Icons.notifications,color: kblack,),

              // selectedColor: Colors.yellow,
            ),
            MoltenTab(
              icon: Icon(Icons.book,color: kblack,),
             // title: Text('home'),
              // selectedColor: Colors.yellow,
            ),
            MoltenTab(
              icon: Icon(Icons.message,color: kblack,),
              // selectedColor: Colors.yellow,
            ),
            MoltenTab(
              icon: Icon(Icons.person,color: kblack,),
              // selectedColor: Colors.yellow,
            ),
            
          ],
          
          
        ),
        
        body: bottom_navigation_list[_selectedIndex],
        
    );
  }
}
