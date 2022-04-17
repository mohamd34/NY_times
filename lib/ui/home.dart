import 'package:flutter/material.dart';

import 'news_list.dart';

class Home extends StatefulWidget {

  static String id = 'Home';

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    var appBar = AppBar(
      leading: Icon(Icons.view_headline),
      actions: [Icon(Icons.search),SizedBox(width: 12,), Icon(Icons.more_vert), SizedBox(width: 8,)],
      title: Text('NY Times Most popular', style: TextStyle(fontSize: 18),),
    );

    return Scaffold(
      appBar: appBar,
      body: NewsList(),
    );
  }
}
