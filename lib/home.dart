import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    final contacts = [
      {'name': 'Hasan', 'phone': '01745777777'},
      {'name': 'Rakib', 'phone': '01852222222'},
      {'name': 'Tamim', 'phone': '01963333333'},
      {'name': 'Mim', 'phone': '01674444444'},
      {'name': 'Sabbir', 'phone': '01585555555'},
      {'name': 'Nusrat', 'phone': '01396666666'},
      {'name': 'Shihab', 'phone': '01407777777'},
      {'name': 'Fahim', 'phone': '01758888888'},
      {'name': 'Afsana', 'phone': '01969999999'},
      {'name': 'Marjan', 'phone': '01870000000'},
    ];
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text('Contact List' ,),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                hintText:'Hasan',
                hintStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                border: OutlineInputBorder(

                )

              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextFormField(
              keyboardType: TextInputType.phone,
              maxLength: 11,
              decoration: InputDecoration(
                  hintText:'01745-777777',
                  hintStyle: TextStyle(fontWeight: FontWeight.bold,color: Colors.black),
                  border: OutlineInputBorder(

                  )

              ),
            ),
          ),
          SizedBox(
            height: 50,
              width: double.infinity,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical()
                    )
                  ),
                    onPressed: (){}, child: Text('ADD')),
              )),
       Expanded(
         child: Padding(
           padding: const EdgeInsets.all(8.0),
           child: ListView.builder(
             itemCount: 10,
               itemBuilder: (context,index){
                 final contact = contacts[index];
             return    Card(
               child: ListTile(
                 leading: Icon(Icons.person,color: Colors.brown,),
                 title: Text(contact['name']!,style: TextStyle(color: Colors.red),),
                 trailing: Icon(Icons.phone,color: Colors.blue,),
                 subtitle: Text(contact['phone']!),
               ),
             );
           }),
         ),
       )
        ],
      ),
    );
  }
}
