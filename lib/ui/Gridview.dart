import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Gridview extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemCount: 100,
        padding: EdgeInsets.all(10),
        itemBuilder: (BuildContext context,int index){
      return Container(
        alignment: Alignment.center,
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: Colors.red[100*((index+1))],
          gradient: LinearGradient(
            colors: [Colors.yellowAccent,Colors.black],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
          image: DecorationImage(
            image: AssetImage('assets/images/images.jpg')
          )
        ),

        child: Text(
          'Hi Flutter $index',
          textAlign: TextAlign.center,
        ),

      );
        }

    );
  }

}