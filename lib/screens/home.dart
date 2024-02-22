import 'package:flutter/material.dart';
import 'package:spotify_clone/models/catagory_operations.dart';
import 'package:spotify_clone/models/music.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  createAppBar(String message){
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      title: Text(message,style: const TextStyle(
        color: Colors.black,
      fontWeight: FontWeight.bold)),

      actions: const [Padding(
        padding: EdgeInsets.only(right: 10),

          child: Icon(Icons.settings))],

    );

  }






//Category
  Widget createCategory(Category category){
    return  Container(
      color: Colors.blueGrey.shade400,
      child: Row(
        children: [
          Image.network(category.imageURL,fit: BoxFit.cover,),
          Padding(
              padding : EdgeInsets.only(left: 10),
              child: Text(category.name,style: TextStyle(color: Colors.white))),
        ],

      ),
    );
  }

  List<Widget>  createListofCategories(){
    List<Category> categoryList = CategoryOperations.getCategories(); //Receive data
    //converted data to widgets using map function
    List<Widget> catagories = categoryList.map((Category category) => createCategory(category)).toList();
    return catagories;
  }



//Create Music
  Widget createMusic (Music music){
    return Padding(
      padding: EdgeInsets.all(10),
      child: Column(
        children: [
          Container(
            height: 200,
            width: 200,
            child: Image.network(music.image,
              fit: BoxFit.cover,),
          ),
          Text(music.name, style: TextStyle(color: Colors.white)),
          Text(music.desc, style: TextStyle(color: Colors.green.shade300)),
      
      
        ],
      ),
    );
    
  }



  Widget createMusicList(String label){
    List<Music> musicList = MusicOperation.getMusic();
    return Container(
      height: 300,

      child: ListView.builder(

        scrollDirection: Axis.horizontal,
        itemBuilder: (ctx, index){
          return createMusic(musicList[index]);

      },
        itemCount: musicList.length,
      ),
    );

  }



  Widget createGrid(){
    return Container(
      padding: EdgeInsets.all(10),
      height: 300,
      child: GridView.count(
        childAspectRatio: 5/2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children: createListofCategories(),
        crossAxisCount: 2,
      ),
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
            createAppBar('Good morning'),const SizedBox(
              height: 5,
            ),

            createGrid(),
            createMusicList('Music For You')

          ],),

        )


    );
  }
}