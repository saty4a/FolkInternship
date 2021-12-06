import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:forkinternship/animations/Fadeanimation.dart';
import 'package:forkinternship/components/model.dart';
import 'package:forkinternship/screens/mainscreen.dart';
import 'package:scrollable_positioned_list/scrollable_positioned_list.dart';

class BedRoom extends StatefulWidget {
  const BedRoom(
    String name,
    String lights, {
    Key? key,
  }) : super(key: key);

  @override
  _BedRoomState createState() => _BedRoomState();
}

class _BedRoomState extends State<BedRoom> {
  ItemScrollController _scrollController = ItemScrollController();

  int _selectedRepeat = 0;
  //int _selectedCard =0;
  int _selectcolor = 0;
  //String  names = name;
  int brightness = 0;

  final List<dynamic> _repeat = [
    ['Main Light', "assets/surface1.svg"],
    ['Desk lights', "assets/bed(1).svg"],
    ['Bed lights', "assets/furniture_and_household.svg"],
  ];

  final List<dynamic> _cards = [
    ['Birthday', "assets/solution1.svg"],
    ['Party', "assets/solution1.svg"],
    ['Relax', "assets/solution1.svg"],
    ['Fun', "assets/solution1.svg"]
  ];

  List<dynamic> mycolors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.purple,
    Colors.orange,
    Colors.indigo,
  ];

  late Color primaryColor = mycolors[0];

  @override
  void initState() {
    Future.delayed(Duration(milliseconds: 500), () {
      _scrollController.scrollTo(
        index: 2,
        duration: Duration(seconds: 3),
        curve: Curves.easeInOut,
      );
    });
    

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      // floatingActionButton: FloatingActionButton(
      //   onPressed: (){
      //     Navigator.push(
      //       context,
      //       MaterialPageRoute(
      //         builder: (context) => MainScreen(),
      //       ),
      //     );
      //   },
      //   child: Icon(Icons.arrow_forward_ios,size: 20,),
      // ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FadeAnimation(
              1.2,
              Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 60.0),
                        child: IconButton(
                          onPressed: () {},
                          icon: SvgPicture.asset(
                              "assets/ionic-md-arrow-round-back.svg"),
                        ),
                      ),
                      // Padding(
                      //   padding: EdgeInsets.only(top: 60.0),
                      //   child:
                      //    Text(name,
                      //   style: TextStyle(
                      //     fontSize: 40,
                      //     color: Colors.grey.shade900,
                      //     fontWeight: FontWeight.bold,
                      //   ),
                      //   ),
                      // ),
                      Spacer(),
                      Container(
                        color: Colors.orange[900 - brightness],
                        padding: EdgeInsets.only(top: 20.0, right: 20.0),
                        child: ColorFiltered(
                          colorFilter:
                              ColorFilter.mode(primaryColor, BlendMode.hue),
                          child: SvgPicture.asset("assets/light bulb.svg"),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  FadeAnimation(
                    1.2,
                    Container(
                      //margin: EdgeInsets.only(left: 120.0),
                      height: 70,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        // color: Colors.indigo,
                        // border: Border.all(width: 1.5,color: Colors.grey.shade200),
                      ),
                      child: ScrollablePositionedList.builder(
                          itemScrollController: _scrollController,
                          scrollDirection: Axis.horizontal,
                          itemCount: _repeat.length,
                          itemBuilder: (BuildContext context, int index) {
                            return GestureDetector(
                              onTap: () {
                                setState(() {
                                  _selectedRepeat = index;
                                });
                              },
                              child: AnimatedContainer(
                                duration: Duration(milliseconds: 300),
                                width: 190,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: _selectedRepeat == index
                                      ? Colors.blue.shade400
                                      : Colors.grey.shade100,
                                ),
                                margin: EdgeInsets.only(right: 20),
                                child: Row(
                                  children: [
                                    Container(
                                      margin: EdgeInsets.only(left: 10.0),
                                      child: SvgPicture.asset(
                                        _repeat[index][1],
                                        height: 40,
                                      ),
                                    ),
                                    Container(
                                      margin: EdgeInsets.only(left: 10.0),
                                      child: Text(
                                        _repeat[index][0],
                                        style: TextStyle(
                                            fontSize: 20,
                                            fontWeight: FontWeight.bold,
                                            color: _selectedRepeat == index
                                                ? Colors.white
                                                : Colors.indigo),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            );
                          }),
                    ),
                  ),
                ],
              ),
            ),
            FadeAnimation(
              1.2,
              Padding(
                  padding: EdgeInsets.only(top: 60.0),
                  child: SizedBox(
                      height: 999607.0,
                      width: double.infinity,
                      child: Stack(
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
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.topLeft,
                                    margin:
                                        EdgeInsets.only(top: 30.0, left: 35.0),
                                    child: Text(
                                      "Intensity",
                                      style: TextStyle(
                                        fontSize: 27.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.indigo,
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 10),
                                  Row(
                                    children: [
                                      Container(
                                          margin: EdgeInsets.only(left: 20.0),
                                          child: SvgPicture.asset(
                                              "assets/solution1.svg")),
                                      Container(
                                        width: 300,
                                        child: Slider.adaptive(
                                          value: brightness.toDouble(),
                                          onChanged: (newBrightness) {
                                            setState(() {
                                              brightness =
                                                  newBrightness.toInt();
                                            });
                                          },
                                          min: 0,
                                          max: 800,
                                          divisions: 5,
                                          activeColor:
                                              Colors.orange[900 - brightness],
                                          inactiveColor:
                                              Colors.orange[900 - brightness],
                                        ),
                                      ),
                                      Spacer(),
                                      Container(
                                          margin: EdgeInsets.only(right: 30.0),
                                          child: SvgPicture.asset(
                                              "assets/solution3.svg")),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                    alignment: Alignment.topLeft,
                                    margin: EdgeInsets.only(left: 20.0),
                                    child: Text(
                                      "Colors",
                                      style: TextStyle(
                                        fontSize: 27.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.indigo,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      buildColorIcons(),
                                    ],
                                  ),
                                  SizedBox(height: 10),
                                  Container(
                                    alignment: Alignment.topLeft,
                                    margin: EdgeInsets.only(left: 20.0),
                                    child: Text(
                                      "Scenes",
                                      style: TextStyle(
                                        fontSize: 27.0,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.indigo,
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  FadeAnimation(
                                    1.2,
                                     GridView.builder(
                                        gridDelegate:
                                            SliverGridDelegateWithFixedCrossAxisCount(
                                          crossAxisCount: 2,
                                        ),
                                        //itemScrollController: _scrollController,
                                        scrollDirection: Axis.vertical,
                                        shrinkWrap: true,
                                        itemCount: _cards.length,
                                        itemBuilder:
                                            (BuildContext context, int index) {
                                          return
                                          Container(
                                            padding: EdgeInsets.only(top: 100.0),
                                             height: 100.0,
                                            child: AnimatedContainer(
                                              //height: 0,
                                              duration:
                                                  Duration(milliseconds: 300),
                                              width: 190,
                                              decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(15),
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topRight,
                                                      end: Alignment.topLeft,
                                                      //stops: [0.1, 0.5, 0.7, 0.9],
                                                      colors: 
                                                      [
                                                        Color(0xFF3366FF),
                                                        Color(0xFF00CCFF),
                                                      ],)
                                                
                                              ),
                                              margin:
                                                  EdgeInsets.only(right: 20),
                                              child: Row(
                                                children: [
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        left: 10.0),
                                                    child: SvgPicture.asset(
                                                      _cards[index][1],
                                                      height: 40,
                                                    ),
                                                  ),
                                                  Container(
                                                    margin: EdgeInsets.only(
                                                        left: 10.0),
                                                    child: Text(
                                                      _cards[index][0],
                                                      style: TextStyle(
                                                          fontSize: 20,
                                                          fontWeight: FontWeight
                                                              .bold,
                                                              color: Colors.white,
                                                          ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          );
                                        },
                                      ),
                                    ),
                                  
                                ],
                              )),
                              // Positioned(
                              //   right: 120,
                              //   bottom: 0,
                              //   child: 
                              //   SizedBox(
                              //     height: 46,
                              //     width: 46,
                              //     child: TextButton(
                              //       style: TextButton.styleFrom(
                              //         shape: RoundedRectangleBorder(
                              //           borderRadius: BorderRadius.circular(50),
                              //           side: BorderSide(color: Colors.white
                              //           ), ),
                              //           primary: Colors.white,
                              //           backgroundColor: Color(0xFFF5F6F9),
                              //       ),
                              //       onPressed: (){},
                              //       child: SvgPicture.asset("assets/Icon awesome-power-off.svg")),
                              //   )),
                        ],
                        
                      )
                      )
                      ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildColorIcons() => Positioned(
      bottom: 35,
      right: 10,
      child: Row(
        children: [for (var i = 0; i < 6; i++) buildIconBtn(mycolors[i])],
      ));

  Widget buildIconBtn(Color mycolor) => Container(
        child: Stack(
          children: [
            Positioned(
              top: 12.5,
              left: 12.5,
              child: Icon(
                Icons.check,
                size: 20,
                color: primaryColor == mycolor ? mycolor : Colors.transparent,
              ),
            ),
            IconButton(
              onPressed: () {
                setState(() {
                  primaryColor = mycolor;
                });
              },
              icon: Icon(
                Icons.circle,
                color: mycolor.withOpacity(0.65),
                size: 30,
              ),
            )
          ],
        ),
      );
}
