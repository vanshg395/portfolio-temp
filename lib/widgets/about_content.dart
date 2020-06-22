import 'package:flutter/material.dart';

class AboutContent extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 50,
        horizontal: 30,
      ),
      alignment: Alignment.topCenter,
      child: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'About Me',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
              Text(
                'If you love life, don\'t waste time, \nfor time is what life is made up of',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w300,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pharetra at odio nec rhoncus. Sed tincidunt, ex eget sollicitudin rutrum, est erat aliquet dui, quis rhoncus elit justo eget metus. Pellentesque consequat pulvinar pellentesque. Phasellus commodo tempor pretium. Mauris interdum purus quis sem feugiat, et laoreet ipsum consectetur.',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pharetra at odio nec rhoncus. Sed tincidunt, ex eget sollicitudin rutrum, est erat aliquet dui, quis rhoncus elit justo eget metus. Pellentesque consequat pulvinar pellentesque. Phasellus commodo tempor pretium. Mauris interdum purus quis sem feugiat, et laoreet ipsum consectetur.',
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
