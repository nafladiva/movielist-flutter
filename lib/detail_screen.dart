import 'package:flutter/material.dart';
import 'package:muvila/model/movie_content.dart';

class DetailScreen extends StatelessWidget {
  final MovieContent movie;

  DetailScreen({required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff222831),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Stack(children: [
              Container(
                height: 400.0,
                alignment: Alignment.topCenter,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage(movie.image),
                  fit: BoxFit.cover,
                )),
              ),
              Container(
                height: 400.0,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                        colors: [
                      Color(0xff222831).withOpacity(0.0),
                      Color(0xff222831).withOpacity(1.0)
                    ])),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32.0, left: 20.0),
                child: CircleAvatar(
                  backgroundColor: Colors.grey.withOpacity(0.7),
                  child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back,
                        color: Colors.white,
                      )),
                ),
              ),
            ]),
            Container(
              margin: EdgeInsets.only(top: 10),
              child: Center(
                child: Text(
                  movie.title,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Colors.white,
                      fontFamily: 'Montserrat',
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
            ),
            SizedBox(height: 15),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: getGenre(),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12.0),
                    child: Text(
                      'Rating',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: Color(0xFFFFD369).withOpacity(0.4),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Text(
                        movie.rating.toString(),
                        style: TextStyle(
                          color: Color(0xFFFFD369),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(vertical: 15.0, horizontal: 28.0),
              alignment: Alignment.center,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(bottom: 12.0),
                    child: Text(
                      'Storyline',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    movie.desc,
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  List<Widget> getGenre() => movie.genre.map((item) {
        return Padding(
          padding: const EdgeInsets.all(5.0),
          child: Container(
            decoration: BoxDecoration(
              color: Color(0xff393E46),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
              child: Text(
                item,
                style: TextStyle(
                  color: Colors.white,
                ),
              ),
            ),
          ),
        );
      }).toList();
}
