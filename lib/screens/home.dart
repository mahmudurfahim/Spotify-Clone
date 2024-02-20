import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  createAppBar(String message){
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      title: Text(message,style: const TextStyle(
        color: Colors.black)),

      actions: const [Padding(
        padding: EdgeInsets.only(right: 10),

          child: Icon(Icons.settings))],

    );

  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(

        child:Container(

          decoration: BoxDecoration(
            gradient: LinearGradient(colors: [
              Colors.blueGrey.shade300,
              Colors.black],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                stops:const [0.1, 0.3]
            )
          ),

          child: Column(children: [
            createAppBar('Good morning')

          ],),

        )


    );
  }
}