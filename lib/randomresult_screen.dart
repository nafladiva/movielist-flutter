import 'package:flutter/material.dart';
import 'package:muvila/detail_screen.dart';
import 'package:muvila/model/movie_content.dart';
import 'package:muvila/random_screen.dart';

class RandomResultScreen extends StatelessWidget {
  final MovieContent movie;

  RandomResultScreen({required this.movie});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff222831),
      body: Container(
        width: double.infinity,
        child: Column(
          children: [
            SizedBox(height: 80),
            Text(
              movie.title,
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontSize: 24.0,
                fontFamily: 'Montserrat',
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(48.0),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(25),
                child: Image.asset(movie.image),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return DetailScreen(movie: movie);
                }));
              },
              child: Text(
                'Detail',
                style: TextStyle(
                  color: Color(0xff222831),
                  fontSize: 18.0,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFFFD369),
                padding: EdgeInsets.symmetric(horizontal: 70, vertical: 15),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Random Again',
                style: TextStyle(
                  color: Color(0xff222831),
                  fontSize: 18.0,
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                ),
              ),
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFFFD369),
                padding: EdgeInsets.symmetric(horizontal: 70, vertical: 15),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
