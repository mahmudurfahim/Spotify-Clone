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


    Widget miniPlayer(){
    Size devicesize = MediaQuery.of(context).size;
    return AnimatedContainer(duration: const Duration(milliseconds: 500),
    color: Colors.transparent,
      width: devicesize.width,
      height: 50,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        Image.network('https://upload.wikimedia.org/wikipedia/en/f/fc/Mockingbird_%28Eminem_song%29_cover.jpg',
            fit: BoxFit.cover),
        const Text('Song A', style: TextStyle(color: Colors.white),
        ),

        IconButton(onPressed: (){}, icon: const Icon(Icons.play_arrow), color: Colors.white,)

        
      ],),
    );

  }




  @override
  Widget build(BuildContext context) {


    return Scaffold(

      body: Tabs[CurrentTabIndex],
      backgroundColor: Colors.black,
      
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [

          miniPlayer(),

          BottomNavigationBar(
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
        ),]
      ),

    );
  }
}
