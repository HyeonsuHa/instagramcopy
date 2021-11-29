import 'package:flutter/material.dart';
import 'package:flutter_image_slideshow/flutter_image_slideshow.dart';

import 'mainTab.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'InstagramCopy',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, }) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _currentIndex=0;
  final List<Widget> _children = [
    MainTab(),
    Scaffold(),
    MainTab(),
    Scaffold(),
    MainTab(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        unselectedItemColor: Colors.grey,
        selectedItemColor: Colors.black,
        currentIndex: _currentIndex,
        onTap: (int index){
          setState(() {
            _currentIndex=index;
          });
        },
        type:BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(
              title: Container(),icon: const Icon(Icons.home,size:32,)),
          BottomNavigationBarItem(
              title: Container(),icon: const Icon(Icons.search,size: 32,)),
          BottomNavigationBarItem(
              title: Container(),icon: const Icon(Icons.movie,size: 32,)),
          BottomNavigationBarItem(
              title: Container(),icon: const Icon(Icons.shopping_basket,size: 32,)),
          BottomNavigationBarItem(
              title: Container(),icon: const Icon(Icons.person,size: 32,)),
        ],
        ),
      body: _children[_currentIndex],
      );
  }
}
