import 'package:flutter/material.dart';

class cort extends StatelessWidget {
  const cort({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Container Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  height: 150,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.teal,
                  ),
                ),
                Positioned(
                  left: 11,
                  top: 12,
                  child: Container(
                    height: 110,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.purple,
                    ),
                  ),
                ),
                Positioned(
                  left: 20,
                  top: 12,
                  child: Container(
                    height: 120,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
