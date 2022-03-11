import 'package:flutter/material.dart';

class GalaxyBG extends StatelessWidget {
  const GalaxyBG({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Image.asset('assets/gifs/galactic.gif',
          fit: BoxFit.cover,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height),
    );
  }
}
