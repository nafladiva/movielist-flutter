class MovieContent {
  String id;
  String title;
  double rating;
  String desc;
  List<String> genre;
  String image;

  MovieContent(
      {required this.id,
      required this.title,
      required this.rating,
      required this.desc,
      required this.genre,
      required this.image});
}

List<MovieContent> movie_contents = [
  MovieContent(
    id: '1',
    title: 'The Falcon and the Winter Soldier',
    rating: 7.4,
    desc:
        "'The Falcon and the Winter Soldier' follows Sam Wilson (Anthony Mackie) struggling to take up the mantle of Captain America. Along for the ride is Bucky (Sebastian Stan), who is going through his own issues from his past life as the brainwashed assassin known as the Winter Soldier.",
    genre: ['Action', 'Adventure', 'Drama'],
    image: 'images/poster/falcon.jpg',
  ),
  MovieContent(
    id: '2',
    title: 'Loki',
    rating: 8.9,
    desc:
        "The multiple trailers and teasers have confirmed this, though Loki will find himself arrested by the Time Variance Authority, an organization tasked with protecting the timeline. In the latest trailer, TVA agent Mobius reveals Loki broke reality when he vanished during Endgame and he wants the trickster god to help the agency restore it. It's likely Loki will break free from the TVA to wreak some havoc of his own and it's possible he might be stopped by Judge Renslayer, who's assumed to be the love interest and foe of Kang the Conqueror, the time traveling villain who will appear in Ant-Man and the Wasp: Quantumania.",
    genre: ['Action', 'Adventure', 'Fantasy'],
    image: 'images/poster/loki.jpeg',
  ),
  MovieContent(
    id: '3',
    title: 'A Quiet Place II',
    rating: 7.5,
    desc:
        "Following the deadly events at home, the Abbott family must now face the terrors of the outside world as they continue their fight for survival in silence. Forced to venture into the unknown, they quickly realize that the creatures that hunt by sound are not the only threats that lurk beyond the sand path.",
    genre: ['Drama', 'Horror', 'Sci-Fi'],
    image: 'images/poster/quiet.jpg',
  ),
  MovieContent(
    id: '4',
    title: 'Luca',
    rating: 7.5,
    desc:
        "Set in a beautiful seaside town on the Italian Riviera, the original animated feature is a coming-of-age story about one young boy experiencing an unforgettable summer filled with gelato, pasta and endless scooter rides. Luca shares these adventures with his newfound best friend, but all the fun is threatened by a deeply-held secret: he is a sea monster from another world just below the water's surface.",
    genre: ['Animation', 'Adventure', 'Comedy'],
    image: 'images/poster/luca.jpg',
  ),
  MovieContent(
    id: '5',
    title: 'F9: The Fast Saga',
    rating: 5.5,
    desc:
        "Dom (Vin Diesel), Letty (Michelle Rodriguez), and their son are living off the grid when their peace is threatened by Cipher (Charlize Theron), an old enemy. She sets on them a character from Dom’s past: his estranged brother, Jakob (John Cena)—a skilled assassin and an incredible high-performance driver. With him intent on carrying out a plan that will destroy the world, Dom must gather his loyal crew and face the sins of his past to save everything and everyone he loves. Directed by Justin Lin.",
    genre: ['Action', 'Adventure', 'Crime'],
    image: 'images/poster/f9.jpg',
  ),
  MovieContent(
    id: '6',
    title: 'Soul',
    rating: 8.1,
    desc:
        "Joe is a middle-school band teacher whose life hasn't quite gone the way he expected. His true passion is jazz -- and he's good. But when he travels to another realm to help someone find their passion, he soon discovers what it means to have soul.",
    genre: ['Animation', 'Adventure', 'Comedy'],
    image: 'images/poster/soul.jpg',
  ),
  MovieContent(
    id: '7',
    title: 'The Tomorrow War',
    rating: 6.7,
    desc:
        "The world is stunned when a group of time travelers arrive from the year 2051 to deliver an urgent message: Thirty years in the future, mankind is losing a global war against a deadly alien species. The only hope for survival is for soldiers and civilians from the present to be transported to the future and join the fight. Among those recruited is high school teacher and family man Dan Forester (Chris Pratt). Determined to save the world for his young daughter, Dan teams up with a brilliant scientist (Yvonne Strahovski) and his estranged father (J.K. Simmons) in a desperate quest to rewrite the fate of the planet.",
    genre: ['Action', 'Adventure', 'Sci-Fi'],
    image: 'images/poster/tw.jpg',
  ),
  MovieContent(
    id: '8',
    title: 'Raya and the Last Dragon',
    rating: 7.4,
    desc:
        "Long ago, in the fantasy world of Kumandra, humans and dragons lived together in harmony. However, when sinister monsters known as the Druun threatened the land, the dragons sacrificed themselves to save humanity. Now, 500 years later, those same monsters have returned, and it's up to a lone warrior to track down the last dragon and stop the Druun for good.",
    genre: ['Animation', 'Action', 'Adventure'],
    image: 'images/poster/raya.jpg',
  ),
  MovieContent(
    id: '9',
    title: 'Onward',
    rating: 7.4,
    desc:
        "Teenage elf brothers Ian and Barley embark on a magical quest to spend one more day with their late father. Like any good adventure, their journey is filled with cryptic maps, impossible obstacles and unimaginable discoveries. But when dear Mom finds out her sons are missing, she teams up with the legendary manticore to bring her beloved boys back home.",
    genre: ['Animation', 'Adventure', 'Comedy'],
    image: 'images/poster/onward.jpg',
  ),
];
