import 'package:flutter/foundation.dart';

class Category {
   String name;
   String imageURL;

  Category(this.name, this.imageURL);
}

class CategoryOperations {
  CategoryOperations._(){}
  static List<Category> getCategories() {
    return <Category>[


      Category(
        'Top Songs',
        'https://i.scdn.co/image/ab67706c0000da84f71afded6326f0b319311eb9',
      ),

      Category(
        'MJ HITS',
        'https://upload.wikimedia.org/wikipedia/en/thumb/8/89/Michael_jackson_thriller_12_inch_single_USA.jpg/220px-Michael_jackson_thriller_12_inch_single_USA.jpg',
      ),


      Category(
        'Bangla Songs',
        'https://i1.sndcdn.com/avatars-000601109970-yuhcl0-t500x500.jpg',
      ),



      Category(
        'Top Songs',
        'https://i.scdn.co/image/ab67706c0000da84f71afded6326f0b319311eb9',
      ),

      Category(
        'MJ HITS',
        'https://upload.wikimedia.org/wikipedia/en/thumb/8/89/Michael_jackson_thriller_12_inch_single_USA.jpg/220px-Michael_jackson_thriller_12_inch_single_USA.jpg',
      ),


      Category(
        'Bangla Songs',
        'https://i1.sndcdn.com/avatars-000601109970-yuhcl0-t500x500.jpg',
      ),

      Category(
        'Bangla Songs',
        'https://i1.sndcdn.com/avatars-000601109970-yuhcl0-t500x500.jpg',
      ),



      Category(
        'Top Songs',
        'https://i.scdn.co/image/ab67706c0000da84f71afded6326f0b319311eb9',
      ),

      Category(
        'MJ HITS',
        'https://upload.wikimedia.org/wikipedia/en/thumb/8/89/Michael_jackson_thriller_12_inch_single_USA.jpg/220px-Michael_jackson_thriller_12_inch_single_USA.jpg',
      ),


      Category(
        'Bangla Songs',
        'https://i1.sndcdn.com/avatars-000601109970-yuhcl0-t500x500.jpg',
      ),






    ];
  }
}
