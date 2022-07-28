import 'package:flutter/material.dart';

import '../ressources/constGlobal.dart';

class Details extends StatelessWidget {
  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(colorBackground),
      appBar: AppBar(
        title: const Text('En savoir plus'),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      body: _buildBody(),
    );
  }

  Widget _buildBody() {
    return Center(
      child: ListView(
        shrinkWrap: true,
        children: [
          Container(
            alignment: Alignment.center,
            child: const CircleAvatar(
              backgroundImage: AssetImage('assets/tristan.png'),
              radius: 70.0,
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          const Card(
            color: Colors.transparent,
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                descriptionTristan,
                textAlign: TextAlign.center,
                style: styleDescriptionTristan,
              ),
            ),
          ),
          const SizedBox(
            height: 15.0,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Icon(
                  Icons.mail,
                  color: Colors.white,
                  size: 35.0,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  email,
                  style: styleEmail,
                )
              ]),
          const SizedBox(
            height: 20.0,
          ),
          Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const <Widget>[
                Icon(
                  Icons.phone_android,
                  color: Colors.white,
                  size: 35.0,
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  phone,
                  style: stylePhone,
                ),
              ]),
        ],
      ),
    );
  }
}
