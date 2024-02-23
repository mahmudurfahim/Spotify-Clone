import 'package:flutter/material.dart';
import 'package:spotify_clone/models/catagory_operations.dart';
import 'package:spotify_clone/models/music.dart';

class Library extends StatelessWidget {
  const Library({Key? key}) : super(key: key);

  Widget createAppBar(String message){
    return AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      title: Text(
        message,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
      actions: const [
        Padding(
          padding: EdgeInsets.only(right: 10),
          child: Icon(Icons.settings),
        ),
      ],
    );
  }






//Category
  Widget createCategory(Category category){
    return  Container(
      color: Colors.blueGrey.shade400,
      child: Row(
        children: [
          Image.network(
            category.imageURL,
            fit: BoxFit.cover,
          ),
          Padding(
              padding : const EdgeInsets.only(left: 10),
              child: Text(category.name,style: const TextStyle(color: Colors.white))),
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


  Widget createGrid(){
    return Container(
      padding: const EdgeInsets.all(10),
      height: 250,
      child: GridView.count(
        childAspectRatio: 5/2,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        crossAxisCount: 2,
        children: createListofCategories(),
      ),
    );
  }



//Create Music
  Widget createMusic (Music music){
    return Padding(
      padding: const EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 220,
            width: 220,
            child: Image.network(music.image,
              fit: BoxFit.cover,),
          ),
          Text(music.name, style: const TextStyle(color: Colors.white)),
          Text(music.desc, style: TextStyle(color: Colors.green.shade300)),


        ],
      ),
    );

  }



  Widget createMusicList(String label){
    List<Music> musicList = MusicOperation.getMusic();
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [  Padding(
          padding: EdgeInsets.only(top: 15,),
          child: Text(label,
              style: const TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
        ),
          SizedBox(
            height: 300,

            child: ListView.builder(

              scrollDirection: Axis.horizontal,
              itemBuilder: (ctx, index){
                return createMusic(musicList[index]);

              },
              itemCount: musicList.length,
            ),
          )],
      ),
    );

  }




  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(

      child: SafeArea(

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
              createMusicList('Music For You'),
              createMusicList('Popular Playlist'),
              createMusicList('Your Top Mixes'),
              createMusicList('Based on your recent listening'),

            ],),

          )


      ),
    );
  }
}