import 'package:flutter/material.dart';

void main() {
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {
  const Myapp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      themeMode: ThemeMode.system,
      home: Scaffold(
        backgroundColor: Colors.green,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            verticalDirection: VerticalDirection.down,
            children: const <Widget>[
              CircleAvatar(
                radius: 50,
                backgroundImage: AssetImage('images/IMG20211124021322.jpg'),
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: Text(
                  'Abhinav Kumar',
                  style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.normal,
                      fontFamily: 'gloria'),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
                  child: Text(
                    'Gari tera bhai chlayega',
                    style: TextStyle(
                        color: Colors.amber,
                        height: 2,
                        fontSize: 20,
                        fontFamily: 'gloria'),
                  ),
                ),
              ),
              Card(
                margin: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
                child: ListTile(
                  leading: Icon(
                    Icons.mail,
                    color: Colors.green,
                  ),
                  title: Text(
                    'abhinhavkumar2000@gmail.com',
                    style: TextStyle(
                      fontFamily: 'gloria',
                      fontSize: 14,
                    ),
                  ),
                ),
              ),
              Card(
                  margin:
                      EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                  child: ListTile(
                    leading: Icon(
                      Icons.phone,
                      color: Colors.green,
                    ),
                    title: Text(
                      '+44 123 456 789',
                      style: TextStyle(
                        color: Colors.green,
                        fontFamily: 'gloria',
                        fontSize: 20.0,
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
