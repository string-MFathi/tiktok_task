import 'package:flutter/material.dart';
import 'widgets/action_toolbar.dart';
import 'widgets/bottom_toolbar.dart';
import 'widgets/video_description.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(
       decoration: BoxDecoration(
         image: DecorationImage(image: AssetImage('assets/cars.jpg',),
         fit: BoxFit.contain,
         ),
       ),
        child: Column(
          children: <Widget>[

            // top section
            topSection(),

            //middle Section
            middleSection(),

            // bottom Section
           BottomToolbar(),
          ],
        ),
      ),
    );
  }

  Widget topSection(){
    return Container(
      height: 100.0,
      child: Align(
          alignment: Alignment.bottomCenter,
          child: Text('مزاد عام', style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),)),
    );
  }
  Widget middleSection(){
    return Expanded(
      child: Row(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>[
          ActionToolbar(),
          VideoDescription(),
        ],
      ),
    );
  }


}
