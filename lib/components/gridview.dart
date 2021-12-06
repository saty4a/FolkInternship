import 'package:flutter/material.dart';
import 'package:forkinternship/components/Modelcard.dart';
import 'package:forkinternship/components/model.dart';

class Gridview extends StatelessWidget {
  const Gridview({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return 
      GridView.builder(
                         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                           crossAxisCount: 2,
                           //childAspectRatio: 1.0,
                          //  crossAxisSpacing: 10.0,
                          //  mainAxisSpacing: 20.0,
                           ),
                           scrollDirection: Axis.vertical,
                           shrinkWrap: true,
                          itemCount: Rooms.rooms.length,
                          itemBuilder: (BuildContext context, int index){
                            return  
                            Container(margin: EdgeInsets.symmetric(vertical: 10.0,horizontal: 17.0),
                            child: ModelCard(room: Rooms.rooms[index] ),);
                            
                          },
      
    );
  }
}