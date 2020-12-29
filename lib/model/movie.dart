class Movie {
  int id, year, rating, runtime;
  String title, descriptionIntro, backgroundImageUrl;
  List<Torrent> torrentList;
  Movie(
      {this.id,
      this.year,
      this.rating,
      this.runtime,
      this.title,
      this.descriptionIntro,
      this.backgroundImageUrl});
}

class Torrent {
  String quality, size;
}
