import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VideoDescription extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 250.0,
        child: Column(
          mainAxisSize: MainAxisSize.min,

          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            Padding(
              padding: EdgeInsets.only(right: 8.0, bottom: 4.0),
              child: Container(
                height: 30.0,
                  width: 100.0,
                  padding: EdgeInsets.all(5.0),
                  decoration: BoxDecoration(
                    color: Colors.blue,
                    borderRadius: BorderRadius.circular(3),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Icon(Icons.call, color: Colors.white),
                      Text('تواصل معي', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                    ],
                  ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 8.0, bottom: 4.0),
              child: Container(
                height: 30.0,
                width: 105.0,
                padding: EdgeInsets.all(5.0),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(3),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Icon(Icons.send, color: Colors.white),
                    Text(' أرسل رسالة', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
                  ],
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(right: 8.0,),
              child: Container(
                height: 30.0,
                width: 100.0,
               alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(3),
                ),
               child: Text('المدينة : الرياض', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.white),),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8.0, vertical: 5.0),
              child: Container(
                height: 130,
                width: MediaQuery.of(context).size.width,
                padding: EdgeInsets.only(right: 8.0),
                child: ListView(
                  children: <Widget>[
                   Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Text(': عن السيارة',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontSize: 15.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),),
                      Text(' سيارة جديدة بحالة ممتازة ',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                        fontWeight: FontWeight.w500,
                        color: Colors.white,
                      ),),
                      Text('التراخيص كاملة',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),),
                      Text(' سيارة جديدة بحالة ممتازة ',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),),
                      Text('التراخيص كاملة',
                        textAlign: TextAlign.right,
                        style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.white,
                        ),),
                    ],
                  ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

}
