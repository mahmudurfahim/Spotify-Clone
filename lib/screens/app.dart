import 'package:flutter/material.dart';
import 'package:spotify_clone/screens/home.dart';
import 'package:spotify_clone/screens/library.dart';
import 'package:spotify_clone/screens/search.dart';

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final Tabs= [Home(), Search(), Library()];
  int CurrentTabIndex = 0;

  @override
  Widget build(BuildContext context) {


    return Scaffold(

      body: Tabs[CurrentTabIndex],
      backgroundColor: Colors.black,




      bottomNavigationBar: BottomNavigationBar(
        currentIndex: CurrentTabIndex,
        onTap: (CurrentIndex){
          CurrentTabIndex = CurrentIndex;
           setState(() {});


        },
        selectedLabelStyle: TextStyle(color: Colors.white),

        
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.black),
            label: 'Search',
          ),

          BottomNavigationBarItem(
            icon: Icon(Icons.library_books, color: Colors.black),
            label: 'Library',
          ),
        ],
      ),



    );
  }
}
