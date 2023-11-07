import 'package:flutter/material.dart';
import 'package:location/location.dart';

class Test extends StatelessWidget {
  Location location = new Location();

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }

  test() async {
    final x = await location.getLocation();
    print(x);
  }
}
