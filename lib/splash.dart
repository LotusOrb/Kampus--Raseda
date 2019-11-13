import 'package:flutter/material.dart';
import 'login.dart';

class Splash extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Container(
        decoration: new BoxDecoration(color: Colors.blue),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Center(
              child: new Column(
                children: <Widget>[
                  Center(
                  child: Image.asset('images/bike.png'),
                  ),
                ],
              )
            ),
             new Text('RASEDA',
            style: TextStyle(
              color:Colors.white,
              decoration: TextDecoration.none,
              ),
            ),
             new Text('Platform rental sepeda pertama dan termurah di indonesia',
            style: TextStyle(
              color:Colors.white,
              decoration: TextDecoration.none,
              fontSize: 14,
              fontFamily: 'Roboto'
              ),
            ),
            Center(
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new OutlineButton(
                    onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                    },
                    child: new Text(
                      'Selanjutnya',
                      style: TextStyle(color: Colors.white),
                    ),
                    color: Colors.transparent,
                    shape: RoundedRectangleBorder(
                        borderRadius: new BorderRadius.circular(18.0),
                        side: BorderSide(color: Colors.red)),
                  ),
                ],
              ),
            ),
           
            Center(
              child: new Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  new Text(
                    'Sudah Punya Akun ?',
                    style: TextStyle(
                      color: Colors.white,
                      decoration: TextDecoration.none,
                      fontSize: 14,
                      fontFamily: 'Roboto',
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                  FlatButton(
                    onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LoginPage()),
                  );
                    },
                  child: new Text(
                      ' Masuk',
                      style: TextStyle(
                        color: Colors.white,
                        decoration: TextDecoration.none,
                        fontSize: 14,
                        fontFamily: 'Roboto',
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ));
  }
}
