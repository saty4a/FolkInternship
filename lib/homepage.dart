import 'package:flutter/material.dart';
import 'package:forkinternship/components/custom_bottom_nav_bar.dart';
import 'package:forkinternship/components/model.dart';
import 'package:forkinternship/enums.dart';
import 'package:forkinternship/screens/mainscreen.dart';

// class HomePage extends StatefulWidget {
//   const HomePage({ Key? key }) : super(key: key);

//   @override
//   _HomePageState createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   int _curentIndex=0;
//   final tabs =[
//     MainScreen(),
//     Settings(),
//     Iconicarrow(),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return Container(
      
//     );
//   }
// }

class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: MainScreen(),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home,),
    );
  }
}