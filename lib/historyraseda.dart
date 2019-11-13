import 'package:flutter/material.dart';

class Historyraseda extends StatefulWidget {
  Historyraseda({Key key}) : super(key: key);

  @override
  _HistoryrasedaState createState() => _HistoryrasedaState();
}

class _HistoryrasedaState extends State<Historyraseda> {

List<Widget> createItems(int count) {
    List<Widget> items = List<Widget>();
    for (var i=0; i<count; i++) {
      items.add(
        ListTile(
          title: Text(' Anda Telah Menyewa Sepeda Gunung (${i+1})'),
          leading: Icon(Icons.history),
          onTap: () {},
        )
      );
      items.add(Divider(color: Colors.black26));
    }
    return items;
  }



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
                leading: Container(child: Icon(Icons.history,size: 30,),),
                title: Stack(
                  children: <Widget>[
                    Text("History", style: TextStyle(fontSize: 28),),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                      Icon(Icons.delete_forever,size: 30,)
                    ],)
                  ],
                  ),
                backgroundColor: Colors.lightBlueAccent,
                      expandedHeight: 40,
                      elevation: 10,
              )
            ];
          },
        body: ListView(
        padding: EdgeInsets.all(30.0),
        children: createItems(20)
      ),
        ),
        
        ) 
      );
  }
}