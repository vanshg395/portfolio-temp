import 'package:flutter/material.dart';

import './skills_section.dart';

class SkillsContent extends StatelessWidget {
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
                'Skills',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 40,
                ),
              ),
              Text(
                'Build your skills, not your resume',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w300,
                  fontSize: 18,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              SkillsSection(
                  title: 'Industry Knowledge',
                  skills: ['App Dev', 'Photoshop', 'Logo Design', 'UI/UX']),
              SizedBox(
                height: 30,
              ),
              SkillsSection(
                  title: 'Tech Skills',
                  skills: ['App Dev', 'Photoshop', 'Logo Design', 'UI/UX']),
              SizedBox(
                height: 30,
              ),
              SkillsSection(
                  title: 'Tech Skills',
                  skills: ['App Dev', 'Photoshop', 'Logo Design', 'UI/UX']),
            ],
          ),
        ),
      ),
    );
  }
}
