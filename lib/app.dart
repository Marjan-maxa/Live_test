import 'package:flutter/material.dart';
import 'package:test_live/Buttons.dart';
import 'package:test_live/Dashbo=ard.dart';
import 'package:test_live/THM_mode/theme.dart';
import 'package:test_live/Tour_booking.dart';
import 'package:test_live/aspectratio_response.dart';
import 'package:test_live/container.dart';
import 'package:test_live/home.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:test_live/todo_list.dart';

import 'log_in.dart';

class Myapp extends StatelessWidget {
  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(360, 690),
    minTextAdapt: true,
    splitScreenMode: true,
    // Use builder only if you need to use library outside ScreenUtilInit context
    builder: (_ , child) {
    return MaterialApp(
      debugShowCheckedModeBanner: false ,
      // theme: ThemeData(
      //   inputDecorationTheme: InputDecorationTheme(
      //     border: OutlineInputBorder(
      //       borderRadius: BorderRadius.circular(19)
      //     ),
      //     enabledBorder:OutlineInputBorder(
      //      borderSide: BorderSide(color: Colors.grey),
      //       borderRadius: BorderRadius.circular(13)
      //     ),
      //     focusedBorder: OutlineInputBorder(
      //      borderSide: BorderSide(color: Colors.blue)
      //     )
      //
      //   ),
      //   // scaffoldBackgroundColor: Colors.grey,
      //   brightness: Brightness.light,
      //   appBarTheme: AppBarTheme(
      //     color: Colors.teal,
      //     centerTitle: true,
      //
      //   ),
      //   textTheme: TextTheme(
      //     titleLarge: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontStyle:FontStyle.italic)
      //   ),
      //   elevatedButtonTheme: ElevatedButtonThemeData(
      //     style: ElevatedButton.styleFrom(
      //       shape: RoundedRectangleBorder(
      //         borderRadius: BorderRadius.circular(13)
      //       ),
      //       backgroundColor: Colors.deepOrange,
      //       foregroundColor: Colors.white
      //     )
      //   )
      // ),
      theme: Thememode.light,
      darkTheme: Thememode.dark,
      themeMode: ThemeMode.light,
      home: cort(),
      initialRoute: 'Log',
      routes: {
        'Log':(context)=>LogIn(),
        'hm':(context)=>Home(),
        'contai':(context)=>cort(),
        'BTN':(context)=>btn(),
        'Dash':(context)=>dash(),
        'Ratio':(context)=>ratio(),
        'Cort':(context)=>cort(),
        'Tour':(context)=>tour(),
        'Todo':(context)=>todo(),
      },
    );

    }
    );
  }
}

