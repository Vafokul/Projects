import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class Newlist extends StatelessWidget {
  Newlist({super.key});
  List<Oquvchi> all = [];
  @override
  Widget build(BuildContext context) {
    allInformations();
    // TODO: implement build
    return ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return Container(
            color: index % 2 == 0 ? Colors.yellowAccent : Colors.redAccent,
            child: ListTile(
              leading: Icon(Icons.child_care),
              subtitle: Text(all[index]._izoh),
              title: Text(all[index]._ism),
              trailing: Icon(Icons.add_circle),
              onTap: () {
                debugPrint(all[index].toString());
                Toastmsg(index, false);
                alertDialogshow(context);
              },
              onLongPress: () {
                debugPrint('OnlogPress pressed');
                Toastmsg(index, true);
              },
            ),
          );
        });
  }

  void allInformations() {
    all = List.generate(
        50,
        (index) => Oquvchi('Oquvchi: $index Ismi', 'Oquvchi izohi $index',
            index % 2 == 0 ? true : false));
  }

  void Toastmsg(int index, bool longpress) {
    Fluttertoast.showToast(
        msg: longpress
            ? 'Long pressed' + all[index].toString()
            : 'one click' + all[index].toString(),
        toastLength: Toast.LENGTH_LONG,
        gravity: ToastGravity.BOTTOM,
        timeInSecForIosWeb: 1,
        backgroundColor: Colors.red,
        textColor: Colors.white,
        fontSize: 16.0);
  }

  void alertDialogshow(BuildContext ctx) {
    showDialog(
        context: ctx,
        barrierDismissible: true,
        builder: (ctx) {
          return AlertDialog(
            title: Text('Alert Dialog Head qismi'),
            content: SingleChildScrollView(
              child: ListBody(
                children: <Widget>[
                  Text('This is a demo alert dialog.'),
                  Text('Would you like to approve of this message?'),
                ],
              ),
            ),
            actions: <Widget>[
              TextButton(
                  onPressed: () {},
                  child: Text('Yes'),
                  style: TextButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.black)),
              ElevatedButton(
                onPressed: () {
                  Navigator.of(ctx).pop();
                },
                child: Text('No'),
                style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.white, backgroundColor: Colors.red),
              )
            ],
          );
        });
  }
}

class Oquvchi {
  String _ism;
  String _izoh;
  bool _jinsi;

  Oquvchi(this._ism, this._izoh, this._jinsi);

  @override
  String toString() {
    // TODO: implement toString
    return "Selected $_ism $_izoh";
  }
}
