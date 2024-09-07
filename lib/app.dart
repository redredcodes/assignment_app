import 'package:assignment_app/home_screen.dart';
import 'package:flutter/material.dart';

class CartApp extends StatelessWidget {
  const CartApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp( debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
