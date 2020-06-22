import 'package:flutter/material.dart';

import './skill_box.dart';

class SkillsSection extends StatelessWidget {
  final String title;
  final List<String> skills;

  SkillsSection({this.title, this.skills});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(
            height: 10,
          ),
          Wrap(
            spacing: 10,
            runSpacing: 10,
            children: skills.map((skill) {
              return SkillBox(skill);
            }).toList(),
          )
        ],
      ),
    );
  }
}
