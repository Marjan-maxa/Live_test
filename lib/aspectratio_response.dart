import 'package:flutter/material.dart';

class ratio extends StatelessWidget {
  const ratio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Response Page'),
      ),
      body:Column(
        children: [
          Expanded(
            flex: 5,
            child: Container(
              height: 100,
              width: double.infinity,
              color: Colors.red,
              child: Text('HELLO'),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              height: 100,
              width: double.infinity,
              color: Colors.green,
              child: Text('Sanjida'),
            ),
          ),
          Flexible(
            flex: 3,
             fit: FlexFit.tight,
            child: Container(
              height: 100,
              width: double.infinity,
              color: Colors.purple,
              child: Text('WORLD'),
            ),
          )
        ],
      ),
    );
  }
}
