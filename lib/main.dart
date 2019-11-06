import 'package:flutter/material.dart';

import 'Pages/Home.dart';
import 'Pages/Jadwal.dart';
import 'Pages/Pesan.dart';
import 'Pages/Scan.dart';
import 'Pages/akun.dart';
void main(){
  runApp(new MaterialApp(
    title: "Schoolly Siswa Side",
    home: new HomePage(),
  ));
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

int _selectedIndex = 0;
final _layoutPage=[
  Home(),
  Jadwal(),
  Scan(),
  Pesan(),
  Akun()
];

void _diKlik(int index){
  setState(() {
    _selectedIndex = index;
  });
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _layoutPage.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            title: Text(
              'Home'
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.calendar_today),
            title: Text(
              'Jadwal'
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.blur_circular),
            title: Text(
              'Scan'
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_bubble),
            title: Text(
              'Pesan'
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.account_circle),
            title: Text(
              'Akun'
            ),
          ),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _diKlik,
      ),
    );
  }
}