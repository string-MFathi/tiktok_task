import 'package:flutter/material.dart';

class BottomToolbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          Icon(Icons.person_outline, color: Colors.white, size: 35.0,),
          Icon(Icons.message, color: Colors.white, size: 35.0,),
          Icon(Icons.add_box, color: Colors.white, size: 40.0,),
          Icon(Icons.search, color: Colors.white, size: 35.0,),
          Icon(Icons.home, color: Colors.white, size: 35.0,),
        ],
      ),
    );
  }
}
