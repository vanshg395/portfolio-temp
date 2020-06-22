import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 50,
        vertical: 30,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.all(5),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(color: Colors.grey, width: 2),
            ),
            child: ClipOval(
              child: Image.asset(
                'assets/img/me.jpeg',
                height: 150,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Vansh Goel',
            style: TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            '"A Cadet Who Codes"',
            style: TextStyle(
              fontStyle: FontStyle.italic,
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Container(
            height: 1,
            width: 200,
            color: Colors.black,
          ),
          FlatButton(
            child: Text('About Me'),
            onPressed: () {},
          ),
          FlatButton(
            child: Text('Skills'),
            onPressed: () {},
          ),
          FlatButton(
            child: Text('Projects'),
            onPressed: () {},
          ),
          Container(
            height: 1,
            width: 200,
            color: Colors.black,
          )
        ],
      ),
    );
  }
}
