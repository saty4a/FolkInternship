import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:forkinternship/enums.dart';
import 'package:forkinternship/homepage.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({ Key? key,
  required this.selectedMenu,
  }) : super(key: key);

  final MenuState selectedMenu;

  @override
  Widget build(BuildContext context) {
    final Color inActiveIconColor = Color(0xFFB6B6B6);
    return Container(
      padding: EdgeInsets.symmetric(vertical: 14),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.15),
          ),
        ],
        // borderRadius: BorderRadius.only(
        //   topLeft: Radius.circular(40),
        //   topRight: Radius.circular(40),
        // ),
      ),
      child: SafeArea(
        top: false,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            IconButton(
              onPressed: ()=> Navigator.push(
               context,
               MaterialPageRoute(builder: (context) => HomePage()),
             ),
                icon:  SvgPicture.asset(
                  "assets/bulb.svg",
                  // color: MenuState.home == selectedMenu 
                  //         ? Color(0xFFFF7643)
                  //         : inActiveIconColor,
                ),
                ),
                IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset(
                    "assets/Icon feather-home.svg",
                  ),
                  ),
                  IconButton(onPressed: 
                  () {},
                  icon: 
                  SvgPicture.asset(
                    "assets/Icon feather-settings.svg",),
                    ),
          ],
        )),
      
    );
  }
}