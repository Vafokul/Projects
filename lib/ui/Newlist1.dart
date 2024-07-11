import 'package:flutter/material.dart';

class Newlist1 extends StatelessWidget{
  List<Words> words=[ Words('A'),Words('B'),Words('C')
  ];

  List<int> colors=<int> [400,500,600];

  Newlist1({super.key});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ListView.separated(
      itemCount: words.length,
      padding: EdgeInsets.all(8.0),
      itemBuilder: (BuildContext contex, int index){
        return Container(
          height: 50,
          color: Colors.amber[colors[index]],
          child: Center(
            child: Text('Entry ${words[index].a}' ),
          ),
        );

      },
      separatorBuilder: (BuildContext context, int index) {
          return const Divider(
            color: Colors.black,
            height: 20,
            thickness: 1,

          );
    },
    );
  }

}
class Words{
  String a;
  Words(this.a);


}
