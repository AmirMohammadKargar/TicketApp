import 'package:Ticket/screens/home_screen/widgets/main_menu_button.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.1,
            ),
            Text(
              'Welcome to Ticket',
              style: TextStyle(
                fontSize: 35.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'Please select waht you want',
              style: TextStyle(
                fontSize: 18.0,
                color: Colors.grey,
              ),
            ),
            SizedBox(height: 65.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MainMenuButton(
                  color1: Colors.lightBlue[200],
                  color2: Colors.lightBlue[300],
                  color3: Colors.lightBlue,
                  color4: Colors.lightBlue[700],
                  icon: Icon(
                    Icons.airplanemode_on,
                    color: Colors.blue,
                    size: 45.0,
                  ),
                  title: 'Flight',
                  des: '2000 Flight',
                ),
                MainMenuButton(
                  color1: Colors.lime[100],
                  color2: Colors.lime[200],
                  color3: Colors.lime[300],
                  color4: Colors.lime[600],
                  icon: Icon(
                    Icons.hotel,
                    color: Colors.lime,
                    size: 45.0,
                  ),
                  title: 'Hotel',
                  des: '2000 hotel',
                ),
              ],
            ),
            SizedBox(height: 15.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                MainMenuButton(
                  color1: Colors.greenAccent[100],
                  color2: Colors.greenAccent,
                  color3: Colors.greenAccent[400],
                  color4: Colors.greenAccent[700],
                  icon: Icon(
                    Icons.car_repair,
                    color: Colors.greenAccent,
                    size: 45.0,
                  ),
                  title: 'Car',
                  des: '2000 car',
                ),
                MainMenuButton(
                  color1: Colors.purple[100],
                  color2: Colors.purple[200],
                  color3: Colors.purple[300],
                  color4: Colors.purple[400],
                  icon: Icon(
                    Icons.credit_card,
                    color: Colors.purple[300],
                    size: 45.0,
                  ),
                  title: 'Super Deal',
                  des: ' ',
                ),
              ],
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                width: MediaQuery.of(context).size.width * 0.95,
                height: MediaQuery.of(context).size.height * 0.25,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/offCard.png'),
                    fit: BoxFit.cover,
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
