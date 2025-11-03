import 'package:flutter/material.dart';

import 'card/list_card.dart';

class tour extends StatelessWidget {
  const tour({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, String>> tours = [
      {
        'image':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcStzv5fb54XbQasSQfZ3LSxFZ2m6d5isMp0fw&s',
        'title': 'Paris'
      },
      {
        'image':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT-boNO7Psz7_xieMNnip5iIQL1eVYcZUU3GA&s',
        'title': 'London'
      },
      {
        'image':
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTLWDDKeIB4Z3fVnK6xA9fBmCYjt05nkCq5xA&s',
        'title': 'Tokyo'
      },
      {
        'image':
        'https://i.natgeofe.com/k/5b396b5e-59e7-43a6-9448-708125549aa1/new-york-statue-of-liberty.jpg',
        'title': 'New York'
      },
    ];
    final List<Map<String, String>>task=[
      {
        'IMG': 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQRvDw235HdTYqo1yzF2O5lH_S10jTtJssJcA&s',
        'txt':'Romantic Paris Getways'
      },
      {
        'IMG':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJH0WvnsP8wnIe-S2tWBfPkm-2sxaBBjwBPw&s',
        'txt':'Bali Adbenture tour'
      },
      {
        'IMG':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQwsHyx3Y3IgwBfBMx9vVgv5loDiFQhNc5bVw&s',
        'txt':'Nepal tour'
      },
      {
        'IMG':'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ0P5zOJyxC-ggLCAZrbUEiS_kruBKzuKdK7A&s',
        'txt':'Maldive tour'
      },
    ];

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SafeArea(
          child: ListView(
            children: [
              Column(

                children: [

                  Stack(
                    children: [
                      Container(
                        height: 200,
                        width: double.infinity,
                        decoration: BoxDecoration(
                          image: DecorationImage(image: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQN-RSIM_mI-TAbA3I_g-rNJjjJGUUyHozXlA&s'),fit: BoxFit.cover)
                        ),
                        child: Stack(
                          children: [
                            Positioned(
                              top: 40,
                                left: 70,
                                child: Text('Explore The World',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 25),)),
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.all(18.0),
                                child: TextField(

                                  decoration: InputDecoration(
                                    prefixIcon: IconButton(onPressed: (){}, icon: Icon(Icons.search)),
                                    filled: true  ,
                                    fillColor: Colors.white,
                                    border: OutlineInputBorder(),
                                    hintText: 'Search',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                   ),
                  SizedBox(height: 25,),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                        child: Text('Top Destinations',style: TextStyle(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold),)),
                  ),
                  GridView.builder(
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),

                      itemCount: 4,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,crossAxisSpacing: 8,     // space between columns
                        mainAxisSpacing: 8,      // space between rows
                        childAspectRatio: 3 / 2.5,), itemBuilder: (context,index){
                    return  ClipRRect(
                      borderRadius: BorderRadius.circular(12),
                      child: New_card(img: tours[index]['image']! ,title: tours[index]['title'],),
                    );
                  }),
                  SizedBox(height: 10,),
                  Card(

                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListView.builder(

                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),

                          itemCount: 4,
                          itemBuilder: (context,index){
                        return Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Container(


                            width: double.infinity,
                            color: Colors.white,
                            child: Row(

                              children: [

                            ClipRRect(
                              borderRadius: BorderRadius.circular(12),

                                child: Image.network(task[index]['IMG']!,height: 100,width: 100,fit: BoxFit.cover,),
                                ),
                                SizedBox(width: 10,),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Text(
                                       task[index]['txt']!,
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                        )),
                                      Row(
                                        children: [
                                          Icon(Icons.timer_outlined,color: Colors.grey,),
                                          Text('4 nights • 5 days')
                                        ],
                                      ),
                                     Row(
                                       mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                       children: [
                                         Text('\$799',style: TextStyle(
                                           color: Colors.blue,
                                           fontWeight: FontWeight.bold,
                                           fontSize: 15,
                                         ),),
                                         SizedBox(width:90,),
                                         SizedBox(
                                           height: 45,
                                           width: 90,
                                           child: ElevatedButton(
                                             style: ElevatedButton.styleFrom(

                                             ),
                                               onPressed: (){}, child: Text('Book Now')),
                                         )
                                       ],
                                     )

                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        );
                      }),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
     );
  }
}


