import 'package:flutter/material.dart';

class DestinationCarousel extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                'Top Destinations',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                  fontFamily: 'Poppins',
//                    letterSpacing: 1.0
                ),
              ),
              GestureDetector(
                onTap: (){
                  print('see all');
                },
                child: Text(
                  'See all',
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600),

                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
