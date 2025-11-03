import 'package:flutter/material.dart';

class dash extends StatelessWidget {
  const dash({super.key});

  @override
  Widget build(BuildContext context) {
    final args=ModalRoute.of(context)?.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(args['Phone'].toString(),style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}
