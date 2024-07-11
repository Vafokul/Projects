import 'package:flutter/material.dart';

class ListTheme extends StatelessWidget {

  List<int> listnumbers=List.generate(300, (index)=>index);
  List<String> listhead=List.generate(300, (index)=>'List elemnts $index');
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  ListView(
      children:listnumbers.map(
          (oshavaqtdagiElement)
    {
      return Column(
        children: <Widget>[
          Container(
            child: Card(
              color: Colors.blueAccent,
              margin: EdgeInsets.all(20),
              elevation: 20,
              child: ListTile(
                leading: CircleAvatar(
                  child: Icon(Icons.face),
                  radius: 12,
                ),
                title: Text('HI, I am a card $oshavaqtdagiElement title'),
                subtitle: Text(listhead[oshavaqtdagiElement]),
                trailing: Icon(Icons.add_circle_outline),
              ),
            ),
          ),
          Divider(color: Colors.black,height: 10,thickness: 1,)
        ],
      );
          },
      ).toList()

    );
  }
}