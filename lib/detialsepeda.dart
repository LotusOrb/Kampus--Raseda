import 'package:flutter/material.dart';

class Detailsepeda extends StatelessWidget {
  Detailsepeda({this.nama,this.gambar});

  final String nama;
  final String gambar;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottomOpacity: 10,
        title: Text("Detail Sepeda"),
      ),
      body: ListView(
        children: <Widget>[
        new Container(
          height: 240,
          child: new Hero(
            tag: nama,
            child: new Material(
              child: new InkWell(
                child: new  Image.asset("images/$gambar",fit: BoxFit.cover),
              ),
            )
          )          
        ),
        Center(
          child: new RaisedButton(
            child: Text("Rental Sekarang"),
            onPressed: () {},
          ),
        )
      ],),
    );
  }
}