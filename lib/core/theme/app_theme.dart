import 'package:flutter/material.dart';
import 'theme_colors.dart';

final lightTheme = ThemeData(
    listTileTheme: const ListTileThemeData(
      iconColor: Colors.black,
    ),
    dividerTheme: const DividerThemeData(
      color: ThemeColors.backgroundColor,
      indent: 16,
    ),
    useMaterial3: true,
    primaryColor: ThemeColors.primary,
    scaffoldBackgroundColor: const Color(0xffE5E5E5),
    pageTransitionsTheme: const PageTransitionsTheme(
      builders: {
        TargetPlatform.android: CupertinoPageTransitionsBuilder(),
        TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
      },
    ),
    cardColor: Colors.white,
    appBarTheme: const AppBarTheme(
      backgroundColor: ThemeColors.white,
      surfaceTintColor: ThemeColors.white,
      iconTheme: IconThemeData(color: Colors.black),
      titleTextStyle: TextStyle(
          fontSize: 17, fontWeight: FontWeight.w600, color: Colors.black),
      elevation: 0,
    ),
    tabBarTheme: const TabBarTheme(
      unselectedLabelColor: Color(0xff303940),
      indicatorColor: ThemeColors.primary,
      labelColor: ThemeColors.primary,
    ),
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      showUnselectedLabels: true,
      backgroundColor: ThemeColors.white,
      selectedItemColor: ThemeColors.primary,
      unselectedItemColor: Color(0xff9AA6AC),
      selectedIconTheme: IconThemeData(
        size: 24,
      ),
      unselectedIconTheme: IconThemeData(
        size: 24,
      ),
      selectedLabelStyle: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w500,
      ),
      unselectedLabelStyle: TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.w500,
        color: Color(0xff9AA6AC),
      ),
      elevation: 3,
    ),
    elevatedButtonTheme: const ElevatedButtonThemeData(
      style: ButtonStyle(
        elevation: MaterialStatePropertyAll(0),
        backgroundColor: MaterialStatePropertyAll(ThemeColors.primary),
        foregroundColor: MaterialStatePropertyAll(Colors.black),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(12)),
          ),
        ),
        textStyle: MaterialStatePropertyAll(
          TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontWeight: FontWeight.w600,
          ),
        ),
        minimumSize: MaterialStatePropertyAll(
          Size(double.infinity, 48),
        ),
        maximumSize: MaterialStatePropertyAll(
          Size(double.infinity, 48),
        ),
      ),
    ),
    inputDecorationTheme: const InputDecorationTheme(
      filled: true,
      fillColor: Colors.white70,
      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      border: OutlineInputBorder(
        borderSide: BorderSide.none,
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(width: 0.0),
        borderRadius: BorderRadius.all(Radius.circular(8)),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.all(Radius.circular(8)),
        borderSide: BorderSide(
          color: ThemeColors.primary,
          width: 0,
        ),
      ),
      labelStyle: TextStyle(
        color: Colors.black,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
      hintStyle: TextStyle(
        color: Colors.black45,
        fontSize: 12,
        fontWeight: FontWeight.w500,
      ),
    ),
    textTheme: const TextTheme(
        bodyLarge: TextStyle(
      color: Colors.black,
      fontSize: 15,
      fontWeight: FontWeight.w400,
    )));

///
final darkTheme = ThemeData(
  brightness: Brightness.dark,
  listTileTheme: const ListTileThemeData(
    iconColor: Colors.black26,
  ),
  dividerTheme: const DividerThemeData(
    color: Color.fromRGBO(244, 244, 244, 0.5),
    indent: 16,
  ),
  bottomSheetTheme: const BottomSheetThemeData(
    backgroundColor: ThemeColors.dark_backgroundColor,
  ),
  useMaterial3: true,
  primaryColor: Colors.white,
  scaffoldBackgroundColor: ThemeColors.dark_backgroundColor,
  pageTransitionsTheme: const PageTransitionsTheme(
    builders: {
      TargetPlatform.android: CupertinoPageTransitionsBuilder(),
      TargetPlatform.iOS: CupertinoPageTransitionsBuilder(),
    },
  ),
  cardColor: ThemeColors.dark_appbar,
  iconTheme: const IconThemeData(color: Colors.white),
  appBarTheme: AppBarTheme(
    shadowColor: Colors.black.withOpacity(0.2),
    backgroundColor: ThemeColors.dark_appbar,
    surfaceTintColor: ThemeColors.dark_appbar,
    iconTheme: const IconThemeData(color: Colors.white),
    titleTextStyle: const TextStyle(
      color: Colors.white,
      fontSize: 17,
      fontWeight: FontWeight.w600,
    ),
    elevation: 0,
  ),
  tabBarTheme: const TabBarTheme(
    unselectedLabelColor: Color(0xff303940),
    indicatorColor: ThemeColors.primary,
    labelColor: ThemeColors.primary,
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    showUnselectedLabels: true,
    backgroundColor: ThemeColors.white,
    selectedItemColor: ThemeColors.primary,
    unselectedItemColor: Color(0xff9AA6AC),
    selectedIconTheme: IconThemeData(
      size: 24,
    ),
    unselectedIconTheme: IconThemeData(
      size: 24,
    ),
    selectedLabelStyle: TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w500,
    ),
    unselectedLabelStyle: TextStyle(
      fontSize: 10,
      fontWeight: FontWeight.w500,
      color: Color(0xff9AA6AC),
    ),
    elevation: 3,
  ),
  elevatedButtonTheme: const ElevatedButtonThemeData(
    style: ButtonStyle(
      elevation: MaterialStatePropertyAll(0),
      backgroundColor: MaterialStatePropertyAll(ThemeColors.primary),
      foregroundColor: MaterialStatePropertyAll(Colors.black),
      shape: MaterialStatePropertyAll(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(12)),
        ),
      ),
      textStyle: MaterialStatePropertyAll(
        TextStyle(
          color: Colors.black,
          fontSize: 15,
          fontWeight: FontWeight.w600,
        ),
      ),
      minimumSize: MaterialStatePropertyAll(
        Size(double.infinity, 48),
      ),
      maximumSize: MaterialStatePropertyAll(
        Size(double.infinity, 48),
      ),
    ),
  ),
  inputDecorationTheme: InputDecorationTheme(

    fillColor: ThemeColors.dark_backgroundColor,
    contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
    border: OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.all(Radius.circular(8)),
    ),
    enabledBorder: OutlineInputBorder(
      borderSide: BorderSide(width: 0.0),
      borderRadius: BorderRadius.all(Radius.circular(8)),
    ),
    focusedBorder: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(8)),
      borderSide: BorderSide(
        color: ThemeColors.primary,
        width: 0,
      ),
    ),
    labelStyle: TextStyle(
      color: Colors.white60,
      fontSize: 12,
      fontWeight: FontWeight.w500,
    ),
    hintStyle: TextStyle(
      color: Colors.white60,
      fontSize: 12,
      fontWeight: FontWeight.w500,
    ),
  ),
  textTheme: const TextTheme(
    bodyLarge: TextStyle(
      color: Colors.white,
      fontSize: 15,
      fontWeight: FontWeight.w400,
    ),
  ),
);
