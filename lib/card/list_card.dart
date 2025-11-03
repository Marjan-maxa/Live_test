
import 'package:flutter/material.dart';

class New_card extends StatelessWidget {
  final img,title;
  const New_card({
    super.key,required this.img,required this.title
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 130,
          width: 220,
          decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.2),

            image: DecorationImage(image: NetworkImage(img),fit: BoxFit.cover),

          ),

        ),
        Positioned(
            top: 110,
            bottom: 10,
            left: 16,
            child: Text(title,style: TextStyle(color: Colors.white,fontSize: 18,fontWeight: FontWeight.bold),)
        )
      ],
    );
  }
}
