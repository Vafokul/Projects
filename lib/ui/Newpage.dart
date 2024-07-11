import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Newpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      child:Column(
        mainAxisAlignment : MainAxisAlignment.center,
           children:<Widget> [
             Center(
               child:ElevatedButton(
                 onPressed: (){
                   Navigator.push(context,MaterialPageRoute(builder: (context)=>Secondpage()));
                 },
                 child: Text('Next page'),
                 style: ElevatedButton.styleFrom(
                     backgroundColor: Colors.red,
                     foregroundColor: Colors.white
                 ),
               ),
             ),

           ]

      )

    );
  }

}
class Secondpage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('SeconPage') ,
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:<Widget> [
            Center(
              child: ElevatedButton(
                onPressed: ()=> Navigator.pop(context),
                child: Text('Go back'),
              ),

            ),
          ],
        ),
      ),
    );
  }

}
