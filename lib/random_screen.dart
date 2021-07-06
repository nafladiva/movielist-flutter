import 'package:flutter/material.dart';

class RandomScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff222831),
      body: SafeArea(
        child: Column(
          children: [
            Center(
              child: Text(
                'Pilih acak',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24.0,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
