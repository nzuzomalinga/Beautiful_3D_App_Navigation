import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    theme: ThemeData(


    ),
      home: MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double x =0;
  double y = 0;
  double z = 0;
  //scale factor
  double sf = 1;
  //depth variables
  double xd =0.0;
  double yd = 0.0;
  double zd = 0.005;
  @override
  Widget build(BuildContext context) {
     return Scaffold(

      body: Center(
        child: Container(
          height: double.infinity,
          width: double.infinity,
          decoration: BoxDecoration(image: DecorationImage(image: AssetImage('assets/mask.jpeg'),fit: BoxFit.cover)),
          child: Transform(
            transform: Matrix4(
              1,0,0,xd,
              0,1,0,0,
              0,0,1,zd,
              0,0,0,1,
            )..rotateY(y)..rotateZ(z),
            alignment: FractionalOffset.center,
            child: GestureDetector(

              onPanUpdate: (details) {
                setState(() {
                  y = y - details.delta.dx / 100;
                  //x = x + details.delta.dy / 100;
                });
              },
              child: Container(
                decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0),color: Colors.green.withOpacity(0.1),),
                height: 400.0,
                width: 400.0,
                child: Padding(
                  padding: const EdgeInsets.all(40.0),
                  child: Center(
                    child: ListWheelScrollView(
                      itemExtent: 100,
                      physics: ScrollPhysics(parent: BouncingScrollPhysics()),
                      children: [
                        Card(
                          elevation: 8,
                          shadowColor: Colors.white,
                          child: ListTile(

                            title: Text('Nzuzos 3D Menu',style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold,),),
                          ),
                        ),
                        Card(
                          elevation: 8,
                          shadowColor: Colors.white,
                          child: ListTile(

                            title: Text('Nzuzos 3D Menu',style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold,)),
                          ),
                        ),
                        Card(
                          elevation: 8,
                          shadowColor: Colors.white,
                          child: ListTile(

                            title: Text('Nzuzos 3D Menu',style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold,)),
                          ),
                        ),
                        Card(
                          elevation: 8,
                          shadowColor: Colors.white,
                          child: ListTile(

                            title: Text('Nzuzos 3D Menu',style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold,)),
                          ),
                        ),
                        Card(
                          elevation: 8,
                          shadowColor: Colors.white,
                          child: ListTile(

                            title: Text('Nzuzos 3D Menu',style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold,)),
                          ),
                        ),
                        Card(
                          elevation: 8,
                          shadowColor: Colors.white,
                          child: ListTile(

                            title: Text('Nzuzos 3D Menu',style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold,)),
                          ),
                        ),
                        Card(
                          elevation: 8,
                          shadowColor: Colors.white,
                          child: ListTile(

                            title: Text('Nzuzos 3D Menu',style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold,)),
                          ),
                        ),
                        Card(
                          elevation: 8,
                          shadowColor: Colors.white,
                          child: ListTile(

                            title: Text('Nzuzos 3D Menu',style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold,)),
                          ),
                        ),
                        Card(
                          elevation: 8,
                          shadowColor: Colors.white,
                          child: ListTile(

                            title: Text('Nzuzos 3D Menu',style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold,)),
                          ),
                        ),Card(
                          elevation: 8,
                          shadowColor: Colors.white,
                          child: ListTile(

                            title: Text('Nzuzos 3D Menu',style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold,)),
                          ),
                        ),


                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

