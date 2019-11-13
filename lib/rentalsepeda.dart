import 'package:flutter/material.dart';
import 'Library/bubbletab.dart';
import 'detialsepeda.dart';


class Rentalsepeda extends StatefulWidget {
  Rentalsepeda({Key key}) : super(key: key);

  @override
  _Rentalsepedastate createState() => _Rentalsepedastate();
}

class _Rentalsepedastate extends State<Rentalsepeda> with SingleTickerProviderStateMixin {
TabController controller;
List<Container> daftarsepeda = new List();

var listsepeda=[
  {"nama" : "Sepeda Gunung", "gambar":"sepeda1.jpg", "harga" : "50.000/Jam"},
   {"nama" : "Sepeda Tempur", "gambar":"sepeda1.jpg", "harga" : "50.000/Jam"},
    {"nama" : "Sepeda Lipat", "gambar":"sepeda1.jpg", "harga" : "50.000/Jam"},
     {"nama" : "Sepeda Bukit", "gambar":"sepeda1.jpg", "harga" : "50.000/Jam"},
      {"nama" : "Sepeda Sleding", "gambar":"sepeda1.jpg", "harga" : "50.000/Jam"},
       {"nama" : "Sepeda Api", "gambar":"sepeda1.jpg", "harga" : "50.000/Jam"},
        {"nama" : "Sepeda Roket", "gambar":"sepeda1.jpg", "harga" : "50.000/Jam"},
         {"nama" : "Sepeda Launcer", "gambar":"sepeda1.jpg", "harga" : "50.000/Jam"},
          {"nama" : "Sepeda Lala", "gambar":"sepeda1.jpg", "harga" : "50.000/Jam"},
           {"nama" : "Sepeda 3", "gambar":"sepeda1.jpg", "harga" : "50.000/Jam"},
            {"nama" : "Sepeda 2", "gambar":"sepeda1.jpg", "harga" : "50.000/Jam"},
];

_makelist()async {
  for(var i = 0;i < listsepeda.length; i++) {
    final sepeda = listsepeda[i];
    final String gambar = sepeda["gambar"];

    daftarsepeda.add(
      new Container(
          child: new Card(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0)
          ),
          elevation: 3,
          child: Column(
          children: <Widget>[
            Container( height: 25,),
            new Hero(
              tag: sepeda['nama'],
              child: new Material(
                child: new InkWell(
                  onTap: ()=> Navigator.of(context).push(new MaterialPageRoute(
                    builder: (BuildContext context)=> new Detailsepeda(nama: sepeda['nama'], gambar: gambar,),
                  )),
                child: Column(
                    children: <Widget>[
                    Container(
                    margin: EdgeInsets.only(top: 15),
                    child: new Image.asset("images/$gambar",fit: BoxFit.cover,),),
                    Container(
                    margin: EdgeInsets.only(top: 10),
                    child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: <Widget>[
                      Container(height: 5,),
                      Container(
                        margin: EdgeInsets.only(left: 8),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                          Text(sepeda['nama'],style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),textAlign: TextAlign.start,),
                          Container(height: 5,),
                          Text(sepeda['harga'],style: TextStyle(fontSize: 12),textAlign: TextAlign.start,),
                          ],
                        ),
                      ),
                        Container(
                          margin: EdgeInsets.only(top: 25,bottom: 15),
                          child: SizedBox(
                            width: 110,
                            height: 30,
                        child: RaisedButton(
                        elevation: 5,
                        shape: RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(20.0),
                          side: BorderSide(color: Colors.lightBlue)
                        ),
                        color: Colors.blueAccent,
                        textColor: Colors.white,
                        onPressed: () {},
                        child: Text("Pesan Searang" , style: TextStyle(fontSize: 10),),
            ),
                ),
              ),
          ],
                ),
                    ),

                    ],
                   ),
                ),
              ),
            ),
          ],
            ),
            ),
      ),
      );
  }
}


@override
  void initState() {
    _makelist();
    super.initState();
    controller = new TabController(length: 4, vsync: this); 
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    /*24 is for notification bar on Android*/
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2.2;
    final double itemWidth = size.width / 2;


    return new Scaffold(
      body: SafeArea(
          child: new NestedScrollView(
            headerSliverBuilder: (BuildContext context, bool innerBoxIsscrolled){
              return <Widget>[
                    SliverAppBar(
                      pinned: true,
                      floating: true,
                      backgroundColor: Colors.white,
                      shape: ContinuousRectangleBorder(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20))),
                      flexibleSpace: FlexibleSpaceBar(
                        collapseMode: CollapseMode.pin,
                        background: _appbar(),
                      ),
                      expandedHeight: 160,
                      elevation: 10,
                      bottom: 
                      new TabBar(
                          isScrollable: true,
                          labelColor: Colors.white,
                          unselectedLabelColor: Colors.black45,
                          indicator: new BubbleTabIndicator(
                          indicatorHeight: 20.0,
                          indicatorColor: Colors.lightBlueAccent,
                          tabBarIndicatorSize: TabBarIndicatorSize.tab,
                      ),
                              tabs: <Widget>[
                                new Tab(text: 'Semua'),
                                new Tab(text: 'Sepeda Gunung'),
                                new Tab(text: 'Sepeda Lipat'),
                                new Tab(text: 'Sepeda Tandem'),
                              ],
                          controller: controller,
                      ),
                    ),
              ];
            },
    body: SafeArea(
            child: Container(
              color: Colors.white60,
              margin: EdgeInsets.only(top: 1,bottom: 1,right: 7,left: 7),
                child: Container(
                color: Colors.white24,
                child: GridView.count(
                crossAxisCount: 2,
                childAspectRatio: (itemWidth / itemHeight),
                children: daftarsepeda,
                ),
              ),
            ),
            ),
          ),
      ),
    );
  }
}

Container _appbar() {
  return new Container(
    child: Container(
      child: Stack(
        children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 30,left: 20),
          child: new Column(
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
  );
}


