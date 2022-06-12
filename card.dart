import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  String AddressTitle,
      phone,
      additionalphone,
      city,
      area,
      streetName,
      Building,
      floor,
      Apartment,
      LandMark;
  MyCard(
      this.AddressTitle,
      this.phone,
      this.additionalphone,
      this.city,
      this.area,
      this.streetName,
      this.Building,
      this.floor,
      this.Apartment,
      this.LandMark);
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(AddressTitle),
        SizedBox(width: 10),
        Text(phone),
        SizedBox(width: 10),
        Text(additionalphone),
        SizedBox(
          width: 10,
        ),
        Text(city),
        SizedBox(width: 10),
        Text(area),
        SizedBox(width: 10),
        Text(streetName),
        SizedBox(width: 10),
        Text(Building),
        SizedBox(
          width: 10,
        ),
        Text(floor),
        SizedBox(width: 10),
        Text(Apartment),
        SizedBox(width: 10),
        Text(LandMark),
      ],
    );
  }
}
