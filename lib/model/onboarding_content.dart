class OnBoardContent {
  String image;
  String title;
  String desc;

  OnBoardContent(
      {required this.image, required this.title, required this.desc});
}

List<OnBoardContent> contents = [
  OnBoardContent(
      image: 'images/onboarding1.png',
      title: 'Confused',
      desc: 'Confused about what to watch because there are too many movies?'),
  OnBoardContent(
      image: 'images/onboarding2.png',
      title: 'Curious',
      desc: "Want to watch a movie but don't know what it's about?"),
  OnBoardContent(
      image: 'images/onboarding3.png',
      title: "It's time!",
      desc: "It's time for you to use Muvila"),
];
