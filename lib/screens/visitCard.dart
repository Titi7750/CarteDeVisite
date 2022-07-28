// ignore_for_file: file_names, deprecated_member_use

import 'package:flutter/material.dart';

import 'details.dart';
import '../ressources/constGlobal.dart';

class VisitCard extends StatelessWidget {
  const VisitCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(colorBackground),
      appBar: AppBar(
        title: const Text('Ma carte de visite'),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: _buildBody(context),
    );
  }

  Widget _buildBody(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          const CircleAvatar(
            backgroundImage: AssetImage('assets/tristan.png'),
            radius: 70.0,
          ),
          const SizedBox(
            height: 10.0,
          ),
          const Card(
            color: Colors.transparent,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                tristanCarteVisit,
                style: styleCarteVisit,
              ),
            ),
          ),
          const Card(
            color: Colors.transparent,
            margin: EdgeInsets.only(top: 30.0, bottom: 15.0),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                statueCardVisit,
                textAlign: TextAlign.center,
                style: styleStatueCardVisit,
              ),
            ),
          ),
          RaisedButton(
            color: Colors.blueGrey,
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (BuildContext context) => const Details()),
              );
            },
            child: const Text(
              buttonReadMore,
              style: styleButtonReadMore,
            ),
          ),
        ]),
      ),
    );
  }
}
