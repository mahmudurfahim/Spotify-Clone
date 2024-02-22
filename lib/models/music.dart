class Music{
   String name;
  String Image;
  String desc;
  Music (this.name, this.Image, this.desc);

}


class MusicOperation{
  MusicOperation._(){}
  static List<Music> getMusic(){

    return <Music>[
      Music(
          'Eita Tomar Gaan',
          'https://i.ytimg.com/vi/kpq572hbVhY/maxresdefault.jpg',
          'This in an Indian Bangla Song'),

      Music(
          'Mockingbird',
          'https://upload.wikimedia.org/wikipedia/en/f/fc/Mockingbird_%28Eminem_song%29_cover.jpg',
          'This is a rap song of eminem'),

      Music(
          'Annies Song',
          'https://upload.wikimedia.org/wikipedia/en/thumb/0/03/Annies-Song-single-cover.jpg/220px-Annies-Song-single-cover.jpg',
          'This is a song of John Denver'),

      Music(
          'Right here waiting for you',
          'https://upload.wikimedia.org/wikipedia/en/2/2d/Right_here_waiting.jpg',
          'This is a very good song'),




    ];

  }
}