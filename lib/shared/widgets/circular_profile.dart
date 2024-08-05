
import 'package:flutter/material.dart';

class CircularProfile extends StatelessWidget{
  const CircularProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 20,
      backgroundImage: AssetImage('assets/images/mikasa.jpeg'),
    );
  }

}