import 'dart:async';
import 'dart:math';
import 'package:flutter/material.dart';
import 'package:muvila/model/movie_content.dart';
import 'package:muvila/randomresult_screen.dart';

class RandomScreen extends StatefulWidget {
  @override
  _RandomScreenState createState() => _RandomScreenState();
}

class _RandomScreenState extends State<RandomScreen> {
  String _anim = 'images/search1.jpg';

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
          SizedBox(height: 50),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Text(
              "Let's choose some movies for you to watch, by just hit the 'Random' button!",
              textAlign: TextAlign.center,
              style: TextStyle(
                color: Colors.white,
                fontFamily: 'Montserrat',
                fontSize: 20.0,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 32.0),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(10),
              child: Container(
                width: 250.0,
                height: 250.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(_anim),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ),
          SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {
              setState(() {
                _anim = 'images/search2.gif';
              });
              Timer(Duration(seconds: 4), () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
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
