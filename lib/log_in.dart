import 'package:flutter/material.dart';

class LogIn extends StatelessWidget {
  const LogIn({super.key});

  @override
  Widget build(BuildContext context) {
    final formkey=GlobalKey<FormState>();
    TextEditingController email=TextEditingController();
    TextEditingController passward=TextEditingController();
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Page'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: formkey,
          child: Column(
            children: [
              Image(image: AssetImage('asset/HM.png')),
              TextFormField(
                controller: email,
                decoration: InputDecoration(
                  hintText: 'Enter your G-mail',

                  label: Text('E-mail',),

                ),
                validator: (value) {
                     email.text;
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  final emailRegex = RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$');
                  if (!emailRegex.hasMatch(value)) {
                    return 'Please enter a valid email address';
                  }
                  return null;
                },
              ),
              SizedBox(height: 12,),
              TextFormField(
                controller: passward,
                obscureText: true,
                decoration: InputDecoration(
                    hintText: 'Enter your Passward',

                    label: Text('Passward',),
                    border: OutlineInputBorder(),

                ),
                validator: (value)
                {
                  passward.text;
                  if(value==null || value.isEmpty)
                    {
                      return 'Please enter passward';
                    }
                  if(value.length<8)
                    {
                      return 'Minimum length eigth';
                    }
                  final pass=RegExp(r'[@,$,!,&,*]');
                  if(!pass.hasMatch(value))
                    {
                      return 'Please enter at least one special character';
                    }
                  else
                    {
                      return null;
                    }
                },
              ),
              SizedBox(height: 15,),
              SizedBox(
                height: 50,
                width: double.infinity,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(

                  ),
                    onPressed: (){
                    print(email.text);
                    print(passward.text);
                    if(formkey.currentState!.validate())
                      {
                        ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(' login Scuccessfully')));
                        Navigator.pushReplacementNamed(context, 'Todo');
                      }
                    }, child: Text('Submit')
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
