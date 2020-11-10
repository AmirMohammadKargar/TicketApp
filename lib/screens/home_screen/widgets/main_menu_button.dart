import 'package:flutter/material.dart';

class MainMenuButton extends StatelessWidget {
  const MainMenuButton({
    Key key,
    this.title,
    this.des,
    this.onPress,
    this.icon,
    this.color1,
    this.color2,
    this.color3,
    this.color4,
  }) : super(key: key);
  final String title, des;
  final Function onPress;
  final Icon icon;
  final Color color1, color2, color3, color4;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onPress();
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.45,
        height: MediaQuery.of(context).size.height * 0.23,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            stops: [0.1, 0.4, 0.6, 0.9],
            colors: [
              color1,
              color2,
              color3,
              color4,
            ],
          ),
          boxShadow: [
            BoxShadow(
              color: Colors.black,
              blurRadius: 8.0,
              spreadRadius: -3.0,
            )
          ],
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              width: MediaQuery.of(context).size.width * 0.13,
              height: MediaQuery.of(context).size.width * 0.13,
              decoration: BoxDecoration(
                color: Colors.white,
                shape: BoxShape.circle,
              ),
              child: icon,
            ),
            SizedBox(height: 10.0),
            Text(
              '$title',
              style: TextStyle(
                color: Colors.white,
                fontSize: 23.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 5.0),
            Text(
              '$des',
              style: TextStyle(
                color: Colors.white,
                fontSize: 18.0,
              ),
            )
          ],
        ),
      ),
    );
  }
}
