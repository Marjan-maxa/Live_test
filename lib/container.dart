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
                padding: EdgeInsets.all(8),
                alignment: Alignment.topRight,
                height: 150,
                width: 220,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(9),
                gradient:LinearGradient(colors: [Colors.transparent,Colors.black54],
               ),

                image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStzv5fb54XbQasSQfZ3LSxFZ2m6d5isMp0fw&s')),

              ),
                child: Container(
                  padding: EdgeInsets.all(8),
                  alignment: Alignment.topRight,
                  decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors:[
                            Colors.transparent,Colors.black54
                          ])
                  ),
                ),
              ),
              Positioned(
                top: 110,
                  bottom: 10,
                  left: 16,
                  child: Text('paris',style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),)
              )
            ],
          )
          ],
        ),
      ),
    );
  }
}
