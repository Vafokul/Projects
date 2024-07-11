import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  final List<String> accountImage=[
    'https://c4.wallpaperflare.com/wallpaper/324/424/56/waterfall-high-quality-hd-jpg-green-and-purple-water-falls-illustration-wallpaper-preview.jpg',
        'https://c4.wallpaperflare.com/wallpaper/324/424/56/waterfall-high-quality-hd-jpg-green-and-purple-water-falls-illustration-wallpaper-preview.jpg',
        'https://c4.wallpaperflare.com/wallpaper/324/424/56/waterfall-high-quality-hd-jpg-green-and-purple-water-falls-illustration-wallpaper-preview.jpg',
        'https://c4.wallpaperflare.com/wallpaper/324/424/56/waterfall-high-quality-hd-jpg-green-and-purple-water-falls-illustration-wallpaper-preview.jpg',

  ];
  void _showFullScreenImages(BuildContext context, int initialIndex){
    Navigator.push(context, MaterialPageRoute(builder: (context)=> FullScreenImageViewer(
      images: accountImage,
      initialIndex: initialIndex
    ))
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Flutter',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue,
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: Icon(Icons.menu),
              color: Colors.white,
              onPressed: () => Scaffold.of(context).openDrawer(),
            );
          },
        ),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              accountName: Text(
              'Kodirov Vafokul',style: TextStyle(
              color: Colors.white,
          fontSize: 16,
        ),
            ),
                accountEmail: Text(
                  '+998 908643301',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                  ),
                ),
             currentAccountPicture: GestureDetector(
               onTap: (){
                 _showFullScreenImages(context,0);
               },
               child: CircleAvatar(
                 backgroundImage: NetworkImage(accountImage[0]),
               ),
             ),



    ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SettingsPage()),
                );
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About'),
              onTap: () {
                Navigator.pop(context);
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => AboutPage()),
                );
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Text('Main Content'),
      ),
    );
  }
}

class FullScreenImageViewer extends StatefulWidget{
  final List<String> images;
    final int initialIndex;
    FullScreenImageViewer({required this.images,required this.initialIndex});



  @override
  _FullScreenImageViewerState  createState() {
    // TODO: implement createState
    return _FullScreenImageViewerState();
  }
}

class _FullScreenImageViewerState extends State<FullScreenImageViewer> {
  late int currentIndex;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    currentIndex=widget.initialIndex;
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return  Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          PhotoViewGallery.builder(
            itemCount:widget.images.length,
            scrollPhysics: BouncingScrollPhysics(),
            builder: (BuildContext context, int index) {
              return PhotoViewGalleryPageOptions(imageProvider: NetworkImage(widget.images[index]),
                initialScale: PhotoViewComputedScale.contained,
                minScale: PhotoViewComputedScale.contained*0.8,
                maxScale: PhotoViewComputedScale.covered*2,
              );
            },
            pageController: PageController(initialPage: widget.initialIndex),
            onPageChanged: (index){
              setState(() {
                currentIndex=index;
              });

            },
            scrollDirection: Axis.horizontal,
            backgroundDecoration: BoxDecoration(
              color: Colors.black,
            ),
          ),
          Positioned(
              top: 40,
              left: 20,
              child:IconButton(
                icon: Icon(Icons.close, color: Colors.white),
                onPressed: ()=>Navigator.pop(context),
              )
          ),
          Positioned(
            bottom: 20,
            left: 0,
            right: 0,
            child:
            Text('${currentIndex+1}/${widget.images.length}',
              style: TextStyle(color: Colors.white,fontSize: 16),textAlign: TextAlign.center,
            ),

          )

        ],
      ),
    );

  }

}


class SettingsPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Center(
        child: Text('Settings Page'),
      ),
    );
  }
}

class AboutPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('About'),
      ),
      body: Center(
        child: Text('About Page'),
      ),
    );
  }
}
