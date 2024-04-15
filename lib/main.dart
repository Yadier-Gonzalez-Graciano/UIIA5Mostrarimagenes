import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "MaterialApp",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Mostrar imagenes"),
        ),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 300.0,
              width: 350.0,
              child: Image.asset(
                'assets/lobo.png',
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(
              height: 350.0,
              width: 350.0,
              child: Image.network(
                'https://i.pinimg.com/564x/01/02/d5/0102d59a1e73e55bafd2af4221671280.jpg',
                fit: BoxFit.cover,
              ),
            )
          ],
        )),
      ),
    );
  }
}
