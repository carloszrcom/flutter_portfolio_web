import 'package:flutter/material.dart';
import 'package:flutter_portfolio_web/utils/util.dart';
import 'package:flutter_portfolio_web/widgets/button_row.dart';

import 'contact_button.dart';

class Body extends StatelessWidget {
  Body({Key? key}) : super(key: key);

  final projectsList = [
    {
      'title': 'Título 1',
      'subtitle': 'Subtítulo 1',
      'image': 'https://picsum.photos/id/100/400/300',
    },
    {
      'title': 'Título 2',
      'subtitle': 'Subtítulo 2',
      'image': 'https://picsum.photos/id/100/400/300',
    },
    {
      'title': 'Título 3',
      'subtitle': 'Subtítulo 3',
      'image': 'https://picsum.photos/id/100/400/300',
    },
    {
      'title': 'Título 4',
      'subtitle': 'Subtítulo 4',
      'image': 'https://picsum.photos/id/100/400/300',
    },
    {
      'title': 'Título 5',
      'subtitle': 'Subtítulo 5',
      'image': 'https://picsum.photos/id/100/400/300',
    },
    {
      'title': 'Título 6',
      'subtitle': 'Subtítulo 6',
      'image': 'https://picsum.photos/id/100/400/300',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Container(
            height: double.infinity,
            width: double.infinity,
            color: Colors.white,
            child: Stack(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Opacity(
                    opacity: 0.4,
                    child: Image.asset('assets/images/carlos-zr.jpg'),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(
                    left: 50,
                  ),
                  child: SingleChildScrollView(
                    child: Container(
                      padding: EdgeInsets.only(top: 100, bottom: 15),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Hola, soy CarlosZR y me gusta programar',
                            style: TextStyle(
                              color: Colors.blueGrey,
                              fontSize: 45,
                            ),
                          ),
                          SizedBox(
                            height: 100,
                          ),
                          ContactButton(
                            buttonText: 'Escríbeme algo',
                            icon: Icon(Icons.mail_outline),
                            onPressed: () {
                              launchMailto();
                            },
                          ),
                          SizedBox(
                            height: 150,
                          ),
                          ButtonRow(),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.white,
            padding: EdgeInsets.only(left: 30, top: 100, right: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Text(
                    'Mis proyectos',
                    style: TextStyle(
                      color: Colors.black54,
                      fontWeight: FontWeight.w600,
                      fontSize: 23,
                    ),
                  ),
                ),
                Expanded(
                  child: ListView.builder(
                    itemCount: projectsList.length,
                    itemBuilder: (context, index) {
                      return Container(
                        padding: EdgeInsets.only(bottom: 20),
                        child: Column(
                          children: [
                            Card(
                              elevation: 3,
                              child: Column(
                                children: [
                                  ListTile(
                                    leading: Icon(Icons.work_outline),
                                    title: Text(
                                        projectsList[index]['title'] ?? ''),
                                    subtitle: Text(
                                        projectsList[index]['subtitle'] ?? ''),
                                  ),
                                  Container(
                                    padding: EdgeInsets.only(bottom: 30),
                                    alignment: Alignment.center,
                                    child: Image.network(
                                        projectsList[index]['image'] ?? ''),
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

// void launchURL(String url) async =>
//       await canLaunch(url) ? await launch(url) : throw 'Could not launch $url';

}
