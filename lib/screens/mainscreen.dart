import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:forkinternship/components/Modelcard.dart';
import 'package:forkinternship/components/gridview.dart';
import 'package:forkinternship/components/model.dart';
import 'package:forkinternship/screens/bedroom.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({
    Key? key,
    //required this.rooms
  }) : super(key: key);

  //final List<Rooms> rooms;

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  bool isChoice = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      body: SingleChildScrollView(
          child: Column(
        children: <Widget>[
          Row(
            children: <Widget>[
              Container(
                margin: const EdgeInsets.only(top: 50.0, left: 30.0),
                child: Text(
                  "Control \nPanel",
                  style: TextStyle(
                    fontSize: 32.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.only(top: 50.0, left: 100.0),
                child: CircleAvatar(
                  child: SvgPicture.asset(
                    "assets/user.svg",
                    height: 200,
                    width: 200,
                  ),
                  backgroundColor: Colors.white,
                  radius: 37,
                ),
              ),
            ],
          ),
          Container(
            margin: const EdgeInsets.only(top: 30.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
              color: Colors.grey.shade100,
            ),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  padding: EdgeInsets.only(top: 30.0, left: 30.0),
                  child: Text(
                    "All Rooms",
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.indigo,
                    ),
                  ),
                ),
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
                  itemBuilder: (BuildContext context, int index) {
                    return GestureDetector(
                        onTap: () {
                          // BedRoom(Rooms.rooms[index].name,Rooms.rooms[index].lights);
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => BedRoom(
                                  Rooms.rooms[index].name,
                                  Rooms.rooms[index].lights),
                            ),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.symmetric(
                              vertical: 10.0, horizontal: 17.0),
                          child: ModelCard(room: Rooms.rooms[index]),
                        ));
                  },
                ),
              ],
            ),
          ),
        ],
      )),
    );
  }
}

// class BedRoom extends StatelessWidget {
//   const BedRoom(String name, String lights, {Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
      
//     );
//   }
// }
