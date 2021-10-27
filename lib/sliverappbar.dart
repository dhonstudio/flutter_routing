// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors

import 'package:flutter/material.dart';

class MySliverAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.greenAccent,
              leading: IconButton(
                  onPressed: () {
                    print('Home');
                  },
                  icon: Icon(Icons.home)),
              actions: <Widget>[
                IconButton(
                  onPressed: () {
                    print('Setting');
                  },
                  icon: Icon(Icons.settings),
                )
              ],
              expandedHeight: 200.0,
              floating: false,
              snap: false,
              pinned: true,
              flexibleSpace: FlexibleSpaceBar(
                centerTitle: true,
                title: Text(
                  'Silver AppBar',
                  style: TextStyle(
                    fontSize: 20.0,
                    color: Colors.white,
                  ),
                ),
                background: Image(
                  image: AssetImage('assets/images/images_1.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            )
          ];
        },
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[Text('Belajar mengkustom AppBar')],
          ),
        ),
      ),
    );
  }
}
