import 'package:flutter/material.dart';
import 'package:internship_application_2/routes/my_product_page.dart';
import 'package:internship_application_2/routes/order_page.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const InternshipProject2(),
      initialRoute: "/order_page",
      routes: {
        "/order_page" : (context) => const OrderPage(),
        "/my_product_page" :(context) => const MyProductPage(), 
      },
      theme: ThemeData(
        outlinedButtonTheme: OutlinedButtonThemeData(
          style: OutlinedButton.styleFrom(
              fixedSize: const Size(200, 40),
              shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(30.0))),
              backgroundColor: const Color.fromRGBO(247, 100, 101, 1)),
        ),
        textTheme: const TextTheme(
            bodyMedium: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
            titleLarge: TextStyle(
                fontSize: 24.0,
                fontWeight: FontWeight.bold,
                color: Colors.black),
            displayMedium: TextStyle(
                fontSize: 14.0,
                fontWeight: FontWeight.bold,
                color: Colors.white)),
      ),
    ),
  );
}

class InternshipProject2 extends StatelessWidget {
  const InternshipProject2({super.key});

  @override
  Widget build(BuildContext context) {
    return const OrderPage();
  }
}
