import 'package:flutter/material.dart';
import 'package:muvila/main_screen.dart';

class NameScreen extends StatefulWidget {
  @override
  _NameScreenState createState() => _NameScreenState();
}

class _NameScreenState extends State<NameScreen> {
  TextEditingController nameController = TextEditingController();

  @override
  void dispose() {
    nameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff222831),
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(32.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 50,
              ),
              Text(
                'Agar lebih akrab, bolehkah kami meminta namamu?',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 32.0,
                  fontFamily: 'Playfair',
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Nama kamu hanya kami gunakan untuk menyapamu, tidak ada yg perlu dikhawatirkan kok! Kalau tidak diisi juga tidak apa-apa :)',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Montserrat',
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 24.0),
                width: double.infinity,
                child: TextField(
                  controller: nameController,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontFamily: 'Montserrat',
                  ),
                  decoration: InputDecoration(
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),
              Container(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Text name = Text(nameController.text);
                    Navigator.of(context).pushReplacement(MaterialPageRoute(
                        builder: (_) => MainScreen(
                              name: name.data == '' ? Text('Kamu') : name,
                            )));
                  },
                  child: Text(
                    'Submit',
                    style: TextStyle(
                      color: Color(0xff222831),
                      fontSize: 20.0,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFFFD369),
                    padding: EdgeInsets.symmetric(horizontal: 70, vertical: 15),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
