import 'package:flutter/material.dart';
import 'package:flutter_portfolio_web/utils/util.dart';
import 'package:flutter_portfolio_web/widgets/body.dart';

import 'package:flutter_portfolio_web/widgets/contact_button.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({Key? key}) : super(key: key);

  final String image =
      'https://carloszr.com/wp-content/uploads/carlos-zr-1.jpg';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(
                top: 9,
                bottom: 9,
              ),
              child: CircleAvatar(
                backgroundColor: Colors.white,
                foregroundImage: NetworkImage(image),
                radius: 25,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'CarlosZR',
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontStyle: FontStyle.italic,
                  fontSize: 20,
                ),
              ),
            ),
          ],
        ),
        actions: [
          ContactButton(
            buttonText: 'Contáctame',
            icon: Icon(Icons.send_sharp),
            onPressed: () {
              launchMailto();
            },
          ),
        ],
      ),
      body: Stack(
        children: [
          Body(),
        ],
      ),
    );
  }
}
