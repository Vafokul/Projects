import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImagesandButtons extends StatelessWidget{
  const ImagesandButtons({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      'Images',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: Center(
                    child: Text(
                      'Images',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: const Center(
                    child: Text(
                      'Images',
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),

        IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(4.0),
                  color: Colors.greenAccent,
                  child: (Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      FadeInImage.assetNetwork(
                          placeholder: 'assets/images/Loading_icon.gif',
                          image:
                          'https://spectrumudaipur.com/wp-content/uploads/2022/06/wedding2-20-12-2019.jpg'),
                      const Text('Vafokul'),
                    ],
                  )),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(4.0),
                  color: Colors.red,
                  child: (const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://spectrumudaipur.com/wp-content/uploads/2022/06/wedding2-20-12-2019.jpg'),
                        foregroundColor: Colors.yellowAccent,
                        radius: 30,
                        child: Text('Vafokul'),
                      ),
                    ],
                  )),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(4.0),
                  color: Colors.greenAccent,
                  child: (Column(
                    children: <Widget>[
                      Image.network(
                          'https://spectrumudaipur.com/wp-content/uploads/2022/06/wedding2-20-12-2019.jpg'),
                      const Text(
                        'Vafokul',
                      ),
                    ],
                  )),
                ),
              ),
            ],
          ),
        ),

        // Second IntrinsicHeight

        IntrinsicHeight(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(4.0),
                  color: Colors.greenAccent,
                  child: const FlutterLogo(
                    size: 80.0,
                    style: FlutterLogoStyle.stacked,
                    textColor: Colors.black,
                  ),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(4.0),
                  color: Colors.red,
                  child: (const Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      CircleAvatar(
                        backgroundImage: NetworkImage(
                            'https://spectrumudaipur.com/wp-content/uploads/2022/06/wedding2-20-12-2019.jpg'),
                        foregroundColor: Colors.yellowAccent,
                        radius: 30,
                        child: Text('Vafokul'),
                      ),
                    ],
                  )),
                ),
              ),
              Expanded(
                child: Container(
                  margin: const EdgeInsets.all(4.0),
                  color: Colors.greenAccent,
                  child: (Column(
                    children: <Widget>[
                      Image.network(
                          'https://spectrumudaipur.com/wp-content/uploads/2022/06/wedding2-20-12-2019.jpg'),
                      const Text(
                        'Vafokul',
                      ),
                    ],
                  )),
                ),
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.symmetric(horizontal: 50.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              ElevatedButton(
                onPressed: buttondebug,
                child: Text('Press me'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.yellow, // Background color
                  foregroundColor: Colors.black45, // Text color
                ),
              ),
              const IconButton(
                onPressed: buttondebug,
                icon: Icon(
                  Icons.add_circle_outline,
                  size: 32,
                ),
              ),
              TextButton(
                onPressed: buttondebug,
                child: Text('Press me'),
                style: TextButton.styleFrom(backgroundColor: Colors.white,
                    foregroundColor: Colors.orange
                ),
              ),
            ],
          ),
        )
      ],
    );

  }

}
void buttondebug(){
  debugPrint('Button pressed');
}
