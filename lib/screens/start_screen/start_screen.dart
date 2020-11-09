import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: <Color>[
              Colors.blue[500],
              Colors.cyanAccent,
              Colors.tealAccent,
            ],
          ),
        ),
        child: Stack(
          children: [
            Positioned(
              top: MediaQuery.of(context).size.height * 0.4,
              child: Image(
                image: AssetImage('assets/images/back.png'),
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.7,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.33,
              left: MediaQuery.of(context).size.width * 0.38,
              child: Image(
                image: AssetImage('assets/images/plane.png'),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.05,
              left: MediaQuery.of(context).size.width * 0.6,
              child: Image(
                image: AssetImage('assets/images/cloud1.png'),
              ),
              width: MediaQuery.of(context).size.width * 0.6,
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.15,
              left: -MediaQuery.of(context).size.width * 0.2,
              child: Image(
                image: AssetImage('assets/images/cloud3.png'),
              ),
              width: MediaQuery.of(context).size.width * 0.6,
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.33,
              left: MediaQuery.of(context).size.width * 0.38,
              child: Image(
                image: AssetImage('assets/images/plane.png'),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.78,
              child: Image(
                image: AssetImage('assets/images/city.png'),
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.96,
              left: MediaQuery.of(context).size.width * 0.43,
              child: Image(
                image: AssetImage('assets/images/car.png'),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.65,
              left: MediaQuery.of(context).size.width * 0.32,
              child: Text(
                'Ticket',
                style: TextStyle(
                  color: Colors.cyanAccent[700],
                  fontSize: 50.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Positioned(
              top: MediaQuery.of(context).size.height * 0.73,
              left: MediaQuery.of(context).size.width * 0.43,
              child: Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.cyanAccent[700],
                  ),
                ),
                child: IconButton(
                  icon: Icon(
                    Icons.arrow_right_alt,
                    color: Colors.cyanAccent[700],
                    size: 30.0,
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, '/walkthroughOneScreen');
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
