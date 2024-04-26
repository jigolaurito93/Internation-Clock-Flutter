import 'package:flutter/material.dart';
import 'package:international_clock/pages/home.dart';
import 'package:international_clock/pages/choose_location.dart';
import 'package:international_clock/pages/loading.dart';

void main() {
  runApp(
    MaterialApp(
        initialRoute: '/home',
        // Map key value pairs
        routes: {
          '/': (context) => const Loading(),
          '/home': (context) => const Home(),
          '/location': (context) => const ChooseLocation(),
        }),
  );
}
