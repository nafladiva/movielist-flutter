import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:muvila/model/movie_content.dart';
import 'package:muvila/randomresult_screen.dart';

class RandomScreen extends StatelessWidget {
  int randomNum() {
    Random random = new Random();
    int randomNumber = random.nextInt(9);
    return randomNumber;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff222831),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Color(0xff393E46),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30),
                      bottomRight: Radius.circular(30),
                    ),
                    boxShadow: [
                      BoxShadow(
                          color: Color(0xff1D2025),
                          spreadRadius: 3,
                          blurRadius: 4)
                    ]),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(left: 14.0),
                      child: IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(
                            Icons.arrow_back,
                            color: Colors.white,
                          )),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          vertical: 48.0, horizontal: 12.0),
                      child: Text(
                        'Random Movie',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Container(
            child: Padding(
              padding: const EdgeInsets.all(24.0),
              child: Image.asset('images/poster/falcon.jpg'),
            ),
          ),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              Timer(Duration(seconds: 3), () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return RandomResultScreen(movie: movie_contents[randomNum()]);
                }));
              });
            },
            child: Text(
              'Random',
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
    );
  }
}
