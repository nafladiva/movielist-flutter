import 'package:flutter/material.dart';
import 'package:muvila/detail_screen.dart';
import 'package:muvila/model/movie_content.dart';
import 'package:muvila/movielist_screen.dart';
import 'package:muvila/random_screen.dart';

class MainScreen extends StatefulWidget {
  final Text name;

  const MainScreen({required this.name});

  @override
  _MainScreenState createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<MovieContent> newRelease = [
    movie_contents[6],
    movie_contents[4],
    movie_contents[7]
  ];
  List<MovieContent> display = [
    movie_contents[0],
    movie_contents[3],
    movie_contents[8]
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff222831),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
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
              child: Padding(
                padding: const EdgeInsets.only(top: 20.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0, left: 24.0),
                      child: Text(
                        'Hello,',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24.0,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24.0, vertical: 2.0),
                      child: Text(
                        widget.name.data ?? 'You',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 36.0,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 24.0, vertical: 8.0),
                      child: Text(
                        "How are you today? Want to watch a movie? Let's choose the movie first!",
                        style: TextStyle(
                          color: Colors.white70,
                          fontFamily: 'Montserrat',
                        ),
                      ),
                    ),
                    Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.symmetric(vertical: 30.0),
                          child: Center(
                            child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return RandomScreen();
                                }));
                              },
                              child: Text(
                                'Choose Randomly',
                                style: TextStyle(
                                  color: Color(0xff222831),
                                  fontSize: 18.0,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              style: ElevatedButton.styleFrom(
                                primary: Color(0xFFFFD369),
                                padding: EdgeInsets.symmetric(
                                    horizontal: 70, vertical: 15),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Container(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'New Release',
                      style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0,
                      ),
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 170,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: newRelease.map((item) {
                          return InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return DetailScreen(movie: item);
                              }));
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, right: 8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Container(
                                  width: 130.0,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(item.image),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                    SizedBox(height: 30),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Movie List',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            fontSize: 20.0,
                          ),
                        ),
                        TextButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return MovieListScreen();
                            }));
                          },
                          child: Text(
                            'See all',
                            style: TextStyle(
                              color: Colors.white70,
                              fontFamily: 'Montserrat',
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Container(
                      height: 170,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: display.map((item) {
                          return InkWell(
                            onTap: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return DetailScreen(movie: item);
                              }));
                            },
                            child: Padding(
                              padding:
                                  const EdgeInsets.only(top: 8.0, right: 8.0),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Container(
                                  width: 130.0,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(
                                          image: AssetImage(item.image),
                                          fit: BoxFit.cover)),
                                ),
                              ),
                            ),
                          );
                        }).toList(),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Text(
                  'made with \u2764 by Nafla',
                  style: TextStyle(
                    color: Colors.white70,
                    fontFamily: 'Montserrat',
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
