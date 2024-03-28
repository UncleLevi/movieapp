class RecommendedFilm {
  String name;
  String year;
  String rated;
  String duration;
  String numberRating;
  String description;
  String category;
  String imageAsset;
  List<String> imageUrls;

  RecommendedFilm({
    required this.name,
    required this.year,
    required this.rated,
    required this.duration,
    required this.numberRating,
    required this.description,
    required this.category,
    required this.imageAsset,
    required this.imageUrls,
  });
}

var recommendedFilmList = [
  RecommendedFilm(
    name: 'Spirited Away',
    year: '2001',
    rated: 'PG',
    duration: '2h 5m',
    numberRating: '8.6',
    description:
        "During her family's move to the suburbs, a sullen 10-year-old girl wanders into a world ruled by gods, witches and spirits, a world where humans are changed into beasts.",
    category: 'Adventure, Supernatural',
    imageAsset: 'images/spiritedaway.jpg',
    imageUrls: [
      'https://m.media-amazon.com/images/M/MV5BNjJlMjg1ZGMtYTI0OS00N2ZiLWJhMmMtZjFiZWIzYmJjZDM2XkEyXkFqcGdeQXVyNDg0NjA4NTY@._V1_FMjpg_UX480_.jpg',
      'https://m.media-amazon.com/images/M/MV5BNzQ0OTcwNDY3MF5BMl5BanBnXkFtZTgwODc1MTMyMDE@._V1_FMjpg_UX600_.jpg',
      'https://m.media-amazon.com/images/M/MV5BZTc5NTc4NDEtMDUwNi00ZDdkLTlkZGUtNjJiMjJjNjliZmZmXkEyXkFqcGdeQXVyMTIwODk1NTQ@._V1_FMjpg_UX600_.jpg',
    ],
  ),
  RecommendedFilm(
    name: "Howl's Moving Castle",
    year: '2004',
    rated: 'PG',
    duration: '1h 59m',
    numberRating: '8.2',
    description:
        'When an unconfident young woman is cursed with an old body by a spiteful witch, her only chance of breaking the spell lies with a self-indulgent yet insecure young wizard and his companions in his legged, walking castle.',
    category: 'Adventure, Drama, Fantasy, Romance',
    imageAsset: 'images/howlcastle.jpg',
    imageUrls: [
      'https://m.media-amazon.com/images/M/MV5BOTk5ODJkYWQtYWJjYi00YzE4LTkyM2ItMDMyMmRhYjJmMTc1XkEyXkFqcGdeQXVyOTc5MDI5NjE@._V1_FMjpg_UX600_.jpg',
      'https://m.media-amazon.com/images/M/MV5BMDhhODY0ZTktZGI3NC00YTM2LTg3NGUtZjMyMzkwMTgwZThjXkEyXkFqcGdeQXVyOTc5MDI5NjE@._V1_FMjpg_UX1920_.jpg',
      'https://m.media-amazon.com/images/M/MV5BMzY1MTFiOTktZmQ1Mi00NTg3LWI0MjgtNmJkOGJkMTUzNDgyXkEyXkFqcGdeQXVyOTc5MDI5NjE@._V1_FMjpg_UX600_.jpg',
    ],
  ),
  RecommendedFilm(
    name: 'Princess Mononoke',
    year: '1997',
    rated: 'PG-13',
    duration: '2h 14m',
    numberRating: '8.6',
    description:
        "On a journey to find the cure for a Tatarigami's curse, Ashitaka finds himself in the middle of a war between the forest gods and Tatara, a mining colony. In this quest he also meets San, the Mononoke Hime.",
    category: 'Action, Adventure, Fantasy',
    imageAsset: 'images/princessmononoke.jpg',
    imageUrls: [
      'https://m.media-amazon.com/images/M/MV5BM2NiZTA5YTctOGNmOC00MGJhLWE5MzgtNTMwMmUyZjRjMDNiXkEyXkFqcGdeQXVyODEzNjM5OTQ@._V1_FMjpg_UX1024_.jpg',
      'https://m.media-amazon.com/images/M/MV5BZjllZDRkMzctNjg1Zi00NjUyLThkMWQtM2M3ZDA1YzBiNWRhXkEyXkFqcGdeQXVyMjMzMDI4MjQ@._V1_FMjpg_UX600_.jpg',
    ],
  ),
  RecommendedFilm(
    name: 'My Neighbor Totoro',
    year: '1988',
    rated: 'G',
    duration: '1h 26m',
    numberRating: '8.2',
    description:
        'When two girls move to the country to be near their ailing mother, they have adventures with the wondrous forest spirits who live nearby.',
    category: 'Adventure, Supernatural',
    imageAsset: 'images/totoro.jpg',
    imageUrls: [
      'https://m.media-amazon.com/images/M/MV5BMjEyMzI0Nzc1N15BMl5BanBnXkFtZTgwNjA2MDIyMDE@._V1_FMjpg_UX1035_.jpg',
      'https://m.media-amazon.com/images/M/MV5BMTM4MjIxMjQ3N15BMl5BanBnXkFtZTgwNzA2MDIyMDE@._V1_FMjpg_UX600_.jpg',
      'https://m.media-amazon.com/images/M/MV5BMzYzOTYzMjAyNl5BMl5BanBnXkFtZTcwOTY1NzcxNw@@._V1_FMjpg_UX480_.jpg',
    ],
  ),
  RecommendedFilm(
    name: "Kiki's Delivery Service",
    year: '1989',
    rated: 'G',
    duration: '1h 43m',
    numberRating: '8.2',
    description:
        'A young witch, on her mandatory year of independent life, finds fitting into a new community difficult while she supports herself by running an air courier service.',
    category: 'Adventure, Comedy, Drama, Fantasy',
    imageAsset: 'images/kiki.jpg',
    imageUrls: [
      'https://m.media-amazon.com/images/M/MV5BODM0NTU2NDA1MV5BMl5BanBnXkFtZTcwODI5OTEyNw@@._V1_FMjpg_UX1024_.jpg',
      'https://m.media-amazon.com/images/M/MV5BMDY4NWJhNDEtZjUwOC00ZTIxLWEzY2ItNmU2NjE4NGYwY2VhXkEyXkFqcGdeQXVyOTc5MDI5NjE@._V1_FMjpg_UX480_.jpg',
      'https://m.media-amazon.com/images/M/MV5BNGYyNDdmZDQtYzNmMC00ZDE1LWIwNjgtY2NjNWIyM2IyMTg3XkEyXkFqcGdeQXVyOTc5MDI5NjE@._V1_FMjpg_UX480_.jpg',
    ],
  ),
  RecommendedFilm(
    name: "Your Name",
    year: '2016',
    rated: 'TV-PG',
    duration: '1h 46m',
    numberRating: '8.8',
    description:
        'Two teenagers share a profound, magical connection upon discovering they are swapping bodies. Things manage to become even more complicated when the boy and girl decide to meet in person.',
    category: 'Drama, Supernatural',
    imageAsset: 'images/yourname.jpg',
    imageUrls: [
      'https://m.media-amazon.com/images/M/MV5BZjlkZGU3YzQtMTk4ZS00NmY1LTk2NWYtY2IyNTViMDFiZDhhXkEyXkFqcGdeQXVyMTIwODk1NTQ@._V1_FMjpg_UX1280_.jpg',
      'https://m.media-amazon.com/images/M/MV5BMjA1YThhYTEtZjI5MS00YzZiLTk2ZTEtNjMwNGJiZWYzMzdjXkEyXkFqcGdeQXVyNzgxMzc3OTc@._V1_FMjpg_UX1024_.jpg',
      'https://m.media-amazon.com/images/M/MV5BMDdlNjlhZmEtZmQ2OC00NjA2LTgxM2MtOTdhZjM1NThiNDM5XkEyXkFqcGdeQXVyNzgxMzc3OTc@._V1_FMjpg_UX1024_.jpg',
      'https://m.media-amazon.com/images/M/MV5BMzI1ZjhkMWMtZDJkYi00Mjk5LWEzZmUtZDAwZjY0MWYwNWYxXkEyXkFqcGdeQXVyMjgzNzU1NzY@._V1_FMjpg_UX1024_.jpg',
    ],
  ),
  RecommendedFilm(
    name: "A Silent Voice",
    year: '2016',
    rated: 'Not Rated',
    duration: '2h 10m',
    numberRating: '8.9',
    description:
        'A young man is ostracized by his classmates after he bullies a deaf girl to the point where she moves away. Years later, he sets off on a path for redemption.',
    category: 'Drama',
    imageAsset: 'images/asilentvoice.jpg',
    imageUrls: [
      'https://m.media-amazon.com/images/M/MV5BYzZhYjIyMjQtYWNiZS00YzdmLTgxZDMtYzZhZTVhOWQxM2RjXkEyXkFqcGdeQXVyNjc3OTE4Nzk@._V1_FMjpg_UX480_.jpg',
      'https://m.media-amazon.com/images/M/MV5BYTdkODUyNDQtM2Y2Ni00NDAwLTlmNjctOGE1Y2I4YWQ2MzUxXkEyXkFqcGdeQXVyNjc3OTE4Nzk@._V1_FMjpg_UX480_.jpg',
      'https://m.media-amazon.com/images/M/MV5BNzE4ODRlYzAtMTgyOS00MTU1LThhZTAtNTMxNWVkNzk3NzE3XkEyXkFqcGdeQXVyNjc3OTE4Nzk@._V1_FMjpg_UX480_.jpg',
    ],
  ),
  RecommendedFilm(
    name: "Suzume",
    year: '2022',
    rated: 'G',
    duration: '2h 2m',
    numberRating: '8.3',
    description:
        'A modern action adventure road story where a 17-year-old girl named Suzume helps a mysterious young man close doors from the other side that are releasing disasters all over in Japan.',
    category: 'Adventure, Fantasy',
    imageAsset: 'images/suzume.jpg',
    imageUrls: [
      'https://m.media-amazon.com/images/M/MV5BMmE2NDIwMWUtNDAwMC00MTE4LThjMGEtOTc0ZDVjNzA5MTIzXkEyXkFqcGdeQXVyOTc5MDI5NjE@._V1_FMjpg_UX600_.jpg',
      'https://m.media-amazon.com/images/M/MV5BMmFjNDc5NGEtMzZmYS00NWVkLWJlNzctZTRiN2MyNmRkZGZjXkEyXkFqcGdeQXVyOTc5MDI5NjE@._V1_FMjpg_UX600_.jpg',
      'https://m.media-amazon.com/images/M/MV5BODhiZGQ4Y2YtNDE0Ny00MWMyLTg1ZDYtOTFkODVkMDVmOTM3XkEyXkFqcGdeQXVyOTc5MDI5NjE@._V1_FMjpg_UX1024_.jpg',
    ],
  ),
  RecommendedFilm(
    name: "Violet Evergarden: The Movie",
    year: '2020',
    rated: 'PG',
    duration: '2h 420m',
    numberRating: '8.8',
    description:
        'After the aftermath of a war, a young girl who was used as a \'tool\' for war learned to live. With the scars of burns, she goes back to her past to feel the true feelings of the Major\'s, "I love you."',
    category: 'Drama, Fantasy',
    imageAsset: 'images/violetevergarden.jpg',
    imageUrls: [
      'https://m.media-amazon.com/images/M/MV5BMTJhZDNkMTItOWU1Yi00OTA3LWE1NzktNmIzMzcwM2NiNmRhXkEyXkFqcGdeQXVyNzI1NzMxNzM@._V1_FMjpg_UX1024_.jpg',
      'https://m.media-amazon.com/images/M/MV5BZDg2MjFlNDktNGZlZC00Y2JmLWI3MGEtMjNkMDIyYzllMjZkXkEyXkFqcGdeQXVyNzM3NDY3OTA@._V1_FMjpg_UX1024_.jpg',
      'https://m.media-amazon.com/images/M/MV5BN2I3YjBiN2EtMjZhMC00OGFkLWFmNzktOGQ4ZjljYmI5YTdhXkEyXkFqcGdeQXVyNzM3NDY3OTA@._V1_FMjpg_UX1920_.jpg',
    ],
  ),
  RecommendedFilm(
    name: "Garden Of Words",
    year: '2013',
    rated: 'TV-14',
    duration: '46m',
    numberRating: '7.8',
    description:
        'A 15-year-old boy and 27-year-old woman find an unlikely friendship one rainy day in the Shinjuku Gyoen National Garden.',
    category: 'Drama, Romance',
    imageAsset: 'images/gardenofwords.jpg',
    imageUrls: [
      'https://m.media-amazon.com/images/M/MV5BYTZmZmE0YzMtY2YwOC00OTI5LThmY2ItNzk3NjgzODcyNTc4XkEyXkFqcGdeQXVyNzgxMzc3OTc@._V1_FMjpg_UX1024_.jpg',
      'https://m.media-amazon.com/images/M/MV5BN2ZiMjkyNTUtNDFjOS00ZTlkLTk5ZWQtMTgzNWU2ZDBmMDJmXkEyXkFqcGdeQXVyNjAwNTYwNDg@._V1_FMjpg_UX480_.jpg',
      'https://m.media-amazon.com/images/M/MV5BYzMwNGY2ZmYtNjlkYi00OGNjLTk4NDYtZTg5MmJlNjliZjkxXkEyXkFqcGdeQXVyNjAwNTYwNDg@._V1_FMjpg_UX480_.jpg',
    ],
  ),
];
