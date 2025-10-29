
import 'package:flutter/material.dart';

class Thememode{
  static ThemeData light= ThemeData(
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(color: Colors.black,fontWeight: FontWeight.bold),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(19)
          ),
          enabledBorder:OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey),
              borderRadius: BorderRadius.circular(13)
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.blue)
          )

      ),
      // scaffoldBackgroundColor: Colors.grey,
       brightness: Brightness.light,
      appBarTheme: AppBarTheme(
        color: Colors.teal,
        centerTitle: true,

      ),
      textTheme: TextTheme(
          titleLarge: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontStyle:FontStyle.italic)
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13)
              ),
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white
          )
      )
  );
  static ThemeData dark= ThemeData(
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
          labelStyle: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(19)
          ),
          enabledBorder:OutlineInputBorder(
              borderSide: BorderSide(color: Colors.white),
              borderRadius: BorderRadius.circular(13)
          ),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.yellowAccent)
          ),


      ),
      // scaffoldBackgroundColor: Colors.grey,
      brightness: Brightness.dark,
      appBarTheme: AppBarTheme(
        color: Colors.blue,
        centerTitle: true,

      ),
      textTheme: TextTheme(
          titleLarge: TextStyle(color: Colors.black,fontWeight: FontWeight.bold,fontStyle:FontStyle.italic)
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(13)
              ),
              backgroundColor: Colors.blue,
              foregroundColor: Colors.white
          )
      )
  );
}