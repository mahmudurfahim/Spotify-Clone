class Music{
   String name;
  String image;
  String desc;
  Music (this.name, this.image, this.desc);

}


class MusicOperation{
  MusicOperation._();
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
      Music(
          'Bohemian Rhapsody',
          'https://media.plus.rtl.de/music-deezer/cover/8b8fc5d117f9357b79f0a0a410a170e8/256x256-000000-80-0-0.jpg?tr=f-auto,w-256',
          'This is a classic rock song \nby Queen'),

      Music(
          'Shape of You',
          'https://c-fa.cdn.smule.com/smule-gg-s-sf-bck1/arr/b3/8d/1f35005b-43a8-4f20-9d63-8d048bc89d6f.jpg',
          'This is a popular song by \nEd Sheeran'),

      Music(
          'Stairway to Heaven',
          'https://i1.sndcdn.com/artworks-6oPOQTZYHoUKgdhv-0TFwFA-t500x500.jpg',
          'This is a classic rock song by \nLed Zeppelin'),

      Music(
          'Billie Jean',
          'https://static.wikia.nocookie.net/michael-jackson/images/d/d6/Billie_Jean_%28song%29.jpg/revision/latest?cb=20230526194432',
          'This is a famous song by \nMichael Jackson'),




    ];

  }
}