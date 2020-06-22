import 'package:anothersample/widgets/project_box.dart';
import 'package:flutter/material.dart';

import './skills_section.dart';

class ProjectsContent extends StatelessWidget {
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
                'Projects',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
              Text(
                'Ahh, Learning alone is boring, implementation is the real fun',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w300,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              ProjectBox(
                name: 'Project 1',
                description:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pharetra at odio nec rhoncus. Sed tincidunt, ex eget sollicitudin rutrum, est erat aliquet dui, quis rhoncus elit justo eget metus. Pellentesque consequat pulvinar pellentesque. Phasellus commodo tempor pretium. Mauris interdum purus quis sem feugiat, et laoreet ipsum consectetur.',
              ),
              SizedBox(
                height: 20,
              ),
              ProjectBox(
                name: 'Project 2',
                description:
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur pharetra at odio nec rhoncus. Sed tincidunt, ex eget sollicitudin rutrum, est erat aliquet dui, quis rhoncus elit justo eget metus. Pellentesque consequat pulvinar pellentesque. Phasellus commodo tempor pretium. Mauris interdum purus quis sem feugiat, et laoreet ipsum consectetur.',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
