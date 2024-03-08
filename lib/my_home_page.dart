import 'package:flutter/material.dart';
import 'package:practice/Pages/folders.dart';
import 'package:practice/Pages/photos.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _selectedTab = 0;

  final List<Widget> _pages = [
    const Photos(),
    const Folders(),
  ];
  void _onOtherTap(int index){
    setState(() {
      _selectedTab = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body:_pages[_selectedTab],

      bottomNavigationBar: BottomNavigationBar(
        items:const [
          BottomNavigationBarItem(
            icon: Icon(Icons.photo),
            label: 'Photos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.folder),
            label: 'Folders',
          ),
        ],
        currentIndex: _selectedTab,
        onTap: _onOtherTap,
      ),
    );
  }
}