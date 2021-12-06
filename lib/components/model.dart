import 'package:equatable/equatable.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Rooms extends Equatable{
  final String name;
  final String lights;
  final String image;

  const Rooms({
    required this.name,
    required this.lights,
    required this.image,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
    name,
    lights,
    image,
  ];

    static List<Rooms> get rooms =>[
      Rooms(
        name:"Bed room",
        lights: "4 Lights",
        image: "assets/bed.svg",
      ),
      Rooms(
        name: "Living room",
        lights: "2 Lights",
        image: "assets/room.svg",
        ),
      Rooms(
        name: "Kitchen",
        lights: "5 Lights",
        image: "assets/kitchen.svg",
        ),
      Rooms(
        name: "Bathroom",
       lights: "1 Light",
        image: "assets/bathtube.svg",
        ),
      Rooms(
        name: "Outdoor",
        lights: "5 Lights",
        image: "assets/house.svg",
        ),
      Rooms(
        name: "Balcony",
        lights: "2 Lights",
        image: "assets/balcony.svg",
        ),
    ];
}