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
      title: 'Bingung',
      desc: 'Bingung mau nonton apa sangking banyaknya film di list kamu?'),
  OnBoardContent(
      image: 'images/onboarding2.png',
      title: 'Tidak tahu',
      desc: 'Mau nonton filmnya tapi gak tau filmnya tentang apa?'),
  OnBoardContent(
      image: 'images/onboarding3.png',
      title: 'Tunggu apalagi!',
      desc: 'Inilah saatnya kamu menggunakan Muvila!'),
];
