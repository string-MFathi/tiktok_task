import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class ActionToolbar extends StatefulWidget {
  @override
  _ActionToolbarState createState() => _ActionToolbarState();
}

class _ActionToolbarState extends State<ActionToolbar> {
  Widget _selectedItem= Container();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 100.0,

      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          _getFollowAction(),
          SizedBox(height: 20,),
          _getSocialAction(icon: Icons.favorite, title: '10K',color: Colors.white,),
          InkWell(
              onTap: () => _onButtonComment(),
              child: _getSocialAction(icon: Icons.add_comment, title: '210', color: Colors.white,)),
          InkWell(
            onTap: ()=> _onButtonShare(),
              child: _getSocialAction(icon: Icons.share, title: 'مشاركة', color: Colors.white,)),
        ],
        ),
    );
  }

  void _onButtonComment(){
    showModalBottomSheet(context: context, builder: (context){
      return Expanded(
        flex: 1,
        child: Column(
          children: <Widget>[
            AppBar(
              elevation: 1,
              backgroundColor: Colors.white,
             leading: Icon(Icons.close, size: 30, color: Colors.black),
             title: Text('تعليقات', style: TextStyle(fontSize: 15.0, color: Colors.black, fontWeight: FontWeight.bold,),),
            centerTitle: true,
            ),
            Container(
              height: 100,
               width: MediaQuery.of(context).size.width,
               color: Colors.white,
               padding: EdgeInsets.symmetric(horizontal: 8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
             mainAxisAlignment: MainAxisAlignment.spaceBetween,
             children: <Widget>[
              Container(
                height: 75,
                width: 75,
                  child: _getSocialAction(title: "6", icon: Icons.favorite_border, color: Colors.black,),
              ),
              Container(
                height: 100,
                width: 190,
                alignment: Alignment.centerRight,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text('@Mohamed',textAlign: TextAlign.left , style: TextStyle(fontSize: 15.0, color: Colors.black, fontWeight: FontWeight.bold),),
                    Text('سيارة رائعة ممكن تتواصل معي',textAlign: TextAlign.right ,style: TextStyle(fontSize: 15.0, color: Colors.black, fontWeight: FontWeight.w700),),
                    Text('عرض الردود',textAlign: TextAlign.right ,style: TextStyle(fontSize: 13.0, color: Colors.black,),),
                  ],
                ),
              ),
              Container(
                height: 100,
                width: 90,
                child: _getProfilePic(),
              ),
            ],
          ),
        ),
          ],
        ),
      );
    });
  }

  void _onButtonShare(){
    showModalBottomSheet(context: context, builder: (context){
      return Container(
        color: Colors.white,
        child: Column(
          children: <Widget>[
            AppBar(
              elevation: 1,
              backgroundColor: Colors.white,
              leading: Icon(Icons.send, size: 30, color: Colors.black),
              title: Text('إرسال الي : ', style: TextStyle(fontSize: 15.0, color: Colors.black, fontWeight: FontWeight.bold,),),
              centerTitle: true,
            ),
            Container(
              height: 100,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              padding: EdgeInsets.symmetric(horizontal: 8.0),
              child: Row(
                mainAxisSize: MainAxisSize.min,
               crossAxisAlignment: CrossAxisAlignment.start,
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: <Widget>[
                 _getProfilePic(),
                 _getProfilePic(),
                 _getProfilePic(),
                 _getProfilePic(),

               ],
                ),
            ),
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Container(
                height: 250,
                width: MediaQuery.of(context).size.width,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Align(
                        alignment: Alignment.topCenter,
                        child: Text('مشاركة عبر : ', style: TextStyle(fontSize: 15.0, color: Colors.black, fontWeight: FontWeight.bold,))),
                    SizedBox(height: 20,),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Icon(Icons.apps, size: 50, color: Colors.black,),

                          Icon(Icons.apps, size: 50, color: Colors.black,),

                          Icon(Icons.apps, size: 50, color: Colors.black,),

                          Icon(Icons.apps, size: 50, color: Colors.black,),

                        ],
                      ),
                    ),
                    SizedBox(height: 20,),
                    Align(
                        alignment: Alignment.bottomCenter,
                        child: Text('إلعاء', style: TextStyle(fontSize: 15.0, color: Colors.black, fontWeight: FontWeight.bold,))),
                  ],
                ),
              ),
            ),
          ],
        ),
      );
    });
  }


  Widget _getSocialAction({String title, IconData icon, Color color}){
    return Container(
      height: 75.0,
      width: 75.0,
      child: Column(
        children: [
          Icon(icon, size: 40.0, color: color),
          Padding(padding: EdgeInsets.only(top: 3.0),
          child: Text(title, style: TextStyle(color:color, fontSize:  15.0 ),),
          ),
        ],
      ),
    );
  }

  Widget _getFollowAction(){
    return Container(
      width: 60.0,
      height: 60.0,
      child: Stack(
        children: [
          _getProfilePic(),
          _getPlusIcon(),
        ],
      ),
    );
  }

Widget _getProfilePic(){
    return Positioned(
      child: Container(
        height: 80.0,
        width: 80.0,
        padding: EdgeInsets.only(bottom: 5.0),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(50.0/2),
          image: DecorationImage(
              image: AssetImage('assets/profile.png',),
            fit: BoxFit.cover,
          ),
        ),

      ),
    );
}

Widget _getPlusIcon(){
    return Positioned(
      bottom: 0,
      left: 40,
      child: Container(
        width: 20.0,
        height: 20.0,
        decoration: BoxDecoration(
          color: Colors.blue,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Icon(Icons.add, color: Colors.white, size: 20.0,),
      ),
    );
}
}
