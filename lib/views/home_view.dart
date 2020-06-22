import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../widgets/centered_view.dart';
import '../widgets/about_content.dart';
import '../widgets/skills_content.dart';
import '../widgets/projects_content.dart';

class HomeView extends StatefulWidget {
  @override
  _HomeViewState createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  int _selectedSectionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF79d70f),
      body: CenteredView(
        child: Material(
          color: Colors.transparent,
          elevation: 10,
          child: Container(
            color: Colors.white,
            child: ScreenTypeLayout(
              tablet: Row(
                children: [
                  Container(
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
                          onPressed: () {
                            setState(() {
                              _selectedSectionIndex = 0;
                            });
                          },
                        ),
                        FlatButton(
                          child: Text('Skills'),
                          onPressed: () {
                            setState(() {
                              _selectedSectionIndex = 1;
                            });
                          },
                        ),
                        FlatButton(
                          child: Text('Projects'),
                          onPressed: () {
                            setState(() {
                              _selectedSectionIndex = 2;
                            });
                          },
                        ),
                        Container(
                          height: 1,
                          width: 200,
                          color: Colors.black,
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 20),
                    height: double.infinity,
                    width: 1,
                    color: Colors.black,
                  ),
                  Expanded(
                    child: _selectedSectionIndex == 0
                        ? AboutContent()
                        : _selectedSectionIndex == 1
                            ? SkillsContent()
                            : ProjectsContent(),
                  ),
                ],
              ),
              mobile: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 50,
                        vertical: 30,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
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
                            onPressed: () {
                              setState(() {
                                _selectedSectionIndex = 0;
                              });
                            },
                          ),
                          FlatButton(
                            child: Text('Skills'),
                            onPressed: () {
                              setState(() {
                                _selectedSectionIndex = 1;
                              });
                            },
                          ),
                          FlatButton(
                            child: Text('Projects'),
                            onPressed: () {
                              setState(() {
                                _selectedSectionIndex = 2;
                              });
                            },
                          ),
                          Container(
                            height: 1,
                            width: 200,
                            color: Colors.black,
                          )
                        ],
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      width: double.infinity,
                      height: 1,
                      color: Colors.black,
                    ),
                    Container(
                      height: 500,
                      child: _selectedSectionIndex == 0
                          ? AboutContent()
                          : _selectedSectionIndex == 1
                              ? SkillsContent()
                              : ProjectsContent(),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
