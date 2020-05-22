import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<IconData> _icons = [
    FontAwesomeIcons.plane,
    FontAwesomeIcons.bed,
    FontAwesomeIcons.walking,
    FontAwesomeIcons.biking
  ];
  Widget _buildIcon(int index) {
    return Container(
      height: 60.0,
      width: 60.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(30.0),
        color: Theme.of(context).accentColor,
      ),
      child: Icon(
        _icons[index],
        size: 25.0,
        color: Theme.of(context).primaryColor,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: ListView(
            padding: EdgeInsets.symmetric(vertical: 30.0),
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(left: 20.0, right: 120.0),
            child: Text(
              'What would do you like to find?',
              style: TextStyle(
                  fontSize: 30.0,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(height: 20.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: _icons
                  .asMap()
                  .entries
                  .map((MapEntry map) => _buildIcon(map.key)))
        ],
      )),
    );
  }
}