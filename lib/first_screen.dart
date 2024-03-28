import 'package:flutter/material.dart';
import 'package:movieapp/main_screen.dart';

class FirstScreen extends StatelessWidget {

  const FirstScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) {
          return const MainScreen();
        }));
      },
      child: const Scaffold(
        backgroundColor: Color.fromARGB(255, 8, 8, 8),
        body: Column(        
          children: <Widget>[
            Expanded(
              flex: 4,
              child: Center(
                child: Text('Donjuan+',
                  style: TextStyle(
                    fontSize: 75,
                    fontFamily: 'Waltograph',
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            Expanded(
              child: Center(
                child: Text('Press anywhere to start',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'SfProText',
                    color: Color.fromARGB(104, 158, 158, 158),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
