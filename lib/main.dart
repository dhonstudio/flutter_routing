// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, prefer_const_literals_to_create_immutables, avoid_print

import 'package:flutter/material.dart';
import 'package:flutter_routing/sliverappbar.dart';

/*
  # Kustomisasi Scaffold:
    - AppBar memiliki berbagai atribut
*/

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Belajar AppBar',
      home: MySliverAppBar(), //Class yang pertama kali dibuka
    ));
  }
}

class CustomAppBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Custom AppBar'),
        leading: IconButton(
            onPressed: () {
              print('Menekan Tombol');
            },
            icon: Icon(Icons.home)),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                print('Tekan Settings');
              },
              icon: Icon(Icons.settings)),
          IconButton(
              onPressed: () {
                print('Tekan Camera');
              },
              icon: Icon(Icons.camera_alt)),
        ],
        // flexibleSpace: Container(
        //   decoration: BoxDecoration(
        //       gradient: LinearGradient(
        //           begin: Alignment.topLeft,
        //           end: Alignment.bottomRight,
        //           colors: <Color>[Colors.green, Colors.blue])),
        // ),
        backgroundColor: Colors.greenAccent,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[Text('Belajar mengkustom AppBar')],
        ),
      ),
    );
  }
}
