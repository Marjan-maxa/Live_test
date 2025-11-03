import 'package:flutter/material.dart';

class btn extends StatelessWidget {
  const btn({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController phone=TextEditingController();
    return Scaffold(
      appBar:  AppBar(
        title: Text('Buttons Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              controller: phone,
              maxLength: 11,
              keyboardType: TextInputType.phone,
              cursorColor: Colors.blue,
              decoration: InputDecoration(
                hintText: 'Phone number',
                label: Text('phone',style: TextStyle(color: Colors.black),),

              ),
            ),
            ElevatedButton(onPressed: (){
              print(phone.text);
            }, child: Text('Submit')),
            ElevatedButton(onPressed: (){
              Navigator.pushNamed(context, 'Dash',arguments:{
                'Phone':phone.text,
                'Name': 'Marjan'
              });
            }, child: Text('Dashboard')),
          ],
        ),
      ),
    );
  }
}
