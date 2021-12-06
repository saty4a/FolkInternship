import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:forkinternship/components/model.dart';
import 'package:forkinternship/screens/bedroom.dart';

class ModelCard extends StatelessWidget {
  const ModelCard({ Key? key, required this.room }) : super(key: key);

  final Rooms room;
  

  @override
  Widget build(BuildContext context) {
    return 
      Container(
        alignment: Alignment.centerLeft,
        padding: const EdgeInsets.only(top: 30.0),
        decoration: BoxDecoration(
          color: Colors.white,
        borderRadius: BorderRadius.circular(25.0),
        boxShadow: [
                    BoxShadow(
                      color: Colors.grey.shade200,
                      offset: Offset(0, 4),
                      blurRadius: 10.0,
                    ),
                  ],
        ),
        child: Column(
          children: [
            SvgPicture.asset(room.image,
            height: 60,
            width: 100,
            fit: BoxFit.fill,
            ),
            SizedBox(height: 20,),
            Container(
              margin: EdgeInsets.only(left: 10.0),
              child: Text(room.name,
             style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,
            ),
            ),
            ),
            //SizedBox(height: 20,),
            Text(room.lights,style: TextStyle(fontSize: 20,
            color: Colors.orange,
            ),
            ),
          ],
        ),
    );
  }
}