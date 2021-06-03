import 'package:flutter/material.dart';

class Location {
  final String image, title, address;
  final int fare, passengers, id;
  final Color color;
  Location({
    this.image,
    this.title,
    this.address,
    this.fare,
    this.passengers,
    this.id,
    this.color
  });
}

List <Location> locations = [
  Location(
    id: 1,
    title: "AJAH",
    address: "Oke-ira",
    image: 'assets/images/ikorodu terminal.jpg'
  ),

  Location(
      id: 2,
      title: "BADORE",
      address: "Badore, Ajah",
      image: 'assets/images/terminal 1.jpg'
  ),

  Location(
      id: 3,
      title: "BAIYEKU",
      address: "Church str, Baiyeku",
      image: 'assets/images/terminal 2.jpg'
  ),

  Location(
      id: 4,
      title: "EBUTE",
      address: "Ebute Ipakodo",
      image: 'assets/images/ikorodu terminal.jpg'
  ),
];