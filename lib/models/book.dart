class Book {
  String type;
  String title;
  String autor;
  String publisher;
  DateTime date;
  String imgUrl;
  num score;
  num ratings;
  String review;
  num height;

  Book(
    this.type,
    this.title,
    this.autor,
    this.publisher,
    this.date,
    this.imgUrl,
    this.score,
    this.ratings,
    this.review,
    this.height,
  );

  static List<Book> generateBooks() {
    return [
      Book(
        'Isekai',
        'Sword Art Online',
        'Reiki Kawara',
        'Norma',
        DateTime(2002, 9, 20),
        'assets/images/book_005_novel.jpg',
        4.8,
        892,
        'La historia se desarrolla en el año 2022, cuando un videojuego de rol multijugador masivo en línea de realidad virtual —VRMMORPG, por sus siglas en inglés (Virtual Reality Massive Multiplayer Online Role Playing Game)— llamado «Sword Art Online» acaba de ser lanzado. Allí, los jugadores pueden controlar sus avatares tal como lo harían con sus cuerpos reales por medio del NerveGear, un casco de realidad virtual capaz de estimular sus cinco sentidos a través de sus cerebros. Sin embargo, los jugadores se dan cuenta de que no pueden salir del videojuego; poco tiempo después, el creador de SAO, Akihiko Kayaba, aparece y les informa que si mueren en el mundo virtual también lo harán en el mundo real, así como les revela que para poder salir del juego primero deben superar los cien pisos del juego.6​ A medida que los jugadores tratan de hacer frente a su situación, dos de ellos Kazuto Kirigaya y Asuna Yuuki, están decididos a ganar y ser libres.',
        240.0,
      ),
      Book(
        'Echi',
        'High School DxD',
        'Ichei Ishibumi',
        'Norma',
        DateTime(2020, 9, 20),
        'assets/images/book_007_novel.jpg',
        4.8,
        892,
        'Issei Hyōdō es un estudiante de segundo año de la Academia Kuō que tiene una gran perversión y una conducta muy lasciva. Lleva una vida tranquila hasta que es llamado para una cita con una chica llamada Yūma Amano. Cuando comienza a oscurecer, la chica lo lleva hasta un lugar apartado donde le muestra su verdadera forma. Ella es un ángel caído y planea asesinarlo. Ya que nadie puede salvarlo, Issei muere. Cuando despierta, descubre que ha reencarnado en un demonio, y desde ese mismo día trabaja como sirviente de Rias Gremory, una chica demonio de alto nivel que resulta ser la más hermosa y popular del instituto.',
        240.0,
      ),
    ];
  }
}
