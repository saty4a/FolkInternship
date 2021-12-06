import 'package:flutter/material.dart';
import 'package:forkinternship/animations/Fadeanimation.dart';

class Colors_page extends StatefulWidget {
  const Colors_page({ Key? key }) : super(key: key);

  @override
  _Colors_pageState createState() => _Colors_pageState();
}

class _Colors_pageState extends State<Colors_page> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: FadeAnimation(1.2,Padding(
                padding: EdgeInsets.only(top: 20.0),
                child:  
                // SizedBox(
                //   height: double.infinity,
                //   child:
                Stack(
                  fit: StackFit.expand,
                  clipBehavior: Clip.none,
                  children: [
                    Container(
                      decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
              color: Colors.grey.shade100,
            ),
                      child: Column(children: [

                      ],)
                    ),
                  ],
                )
                )
            ),
    );
  }
}