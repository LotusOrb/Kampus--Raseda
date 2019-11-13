import 'package:flutter/material.dart';

class Settingraseda extends StatefulWidget {
  Settingraseda({Key key}) : super(key: key);

  @override
  _SettingrasedaState createState() => _SettingrasedaState();
}

class _SettingrasedaState extends State<Settingraseda> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: NestedScrollView(
          headerSliverBuilder: (BuildContext context, bool innerBoxIsscrolled){
            return <Widget>[
              SliverAppBar(
                pinned: true,
                floating: true,
                leading: Container(child: Icon(Icons.settings,size: 30,),),
                title: Stack(
                  children: <Widget>[
                    Text("Settings", style: TextStyle(fontSize: 28),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                      Icon(Icons.verified_user,size: 30,)
                    ],)
                  ],
                  ),
                backgroundColor: Colors.lightBlueAccent,
                      expandedHeight: 40,
                      elevation: 10,
              )
            ];
          },
        body: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.all(15),
              child: Container(
                    child: Stack(
                      children: <Widget>[
                      Container(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                          Text('Selamat Datang', textAlign: TextAlign.left,
                          style: new TextStyle(
                            fontSize: 16.0
                          )),
                          Container(width: 8,height: 10),
                          Text('SugiSunando Malau' , textAlign: TextAlign.left, style: new TextStyle(
                            fontSize: 25.0,
                            fontWeight: FontWeight.w500
                          )),
                          ],
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.all(20),
                        child: new Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: <Widget>[
                            new CircleAvatar(
                                  radius: 40,
                                  backgroundImage: NetworkImage('https://via.placeholder.com/140x100')),
                          ],
                          ),
                      ),
                            ],  
                    ), 
                    ),
                ),
            Card(
               margin: EdgeInsets.only( left: 15, top: 20 , right: 15),
               child: GestureDetector(
                 child: ListTile(
                   title: Text("Akun "),
                   leading: Icon(Icons.vpn_key),
                 ),
                 onTap: () {},
               ),
             ),
            Card(
               margin: EdgeInsets.only( left: 15, top: 20 , right: 15),
               child: GestureDetector(
                 child: ListTile(
                   title: Text("Payment "),
                   leading: Icon(Icons.payment),
                 ),
                 onTap: () {},
               ),
             ),
            Card(
               margin: EdgeInsets.only( left: 15, top: 20 , right: 15),
               child: GestureDetector(
                 child: ListTile(
                   title: Text("Terms of Service"),
                   leading: Icon(Icons.dock),
                 ),
                 onTap: () {},
               ),
             ),
           Card(
               margin: EdgeInsets.only( left: 15, top: 20 , right: 15),
               child: GestureDetector(
                 child: ListTile(
                   title: Text("Help"),
                   leading: Icon(Icons.help_outline),
                 ),
                 onTap: () {},
               ),
             ), 
          Card(
               margin: EdgeInsets.only( left: 15, top: 20 , right: 15),
               child: GestureDetector(
                 child: ListTile(
                   title: Text("Rate Us"),
                   leading: Icon(Icons.star),
                 ),
                 onTap: () {},
               ),
             ),
          Card(
               margin: EdgeInsets.only( left: 15, top: 20 , right: 15),
               child: Container(
                 decoration: new BoxDecoration(
                  color: Colors.red,
                  borderRadius: new BorderRadius.all(Radius.circular(20)),),
                 child: GestureDetector(
                   child: ListTile(
                     title: Center(child: Text("Logout",style: TextStyle(color: Colors.white, fontSize: 20),)),
                   ),
                   onTap: () {},
                 ),
               ),
             ),
          ],
              
        ),
           
        ),
        
        )
    );
  }
}