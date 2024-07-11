import 'package:flutter/material.dart';

class Sliverappbar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
     return CustomScrollView(
       slivers: <Widget> [
         SliverAppBar(
           expandedHeight: 200.0,
           floating: false,
           pinned: true,
           flexibleSpace: FlexibleSpaceBar(
             title: Text('SliverAppbar Example'),
             background: Image.asset('assets/images/images.jpg',fit: BoxFit.cover,),
           ),
         ),
         SliverList(delegate: SliverChildBuilderDelegate(
             (context,index)=>
                 ListTile(
               title: Text('Item $index'),
             ),
           childCount: 50
         ),
         ),
       ],
     );
  }

}