import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  // MyApp({super.key});
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mi app', // solo para android
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          appBar: AppBar(
            // centerTitle: false,
            title: const Align(
              alignment: Alignment.centerRight,
              child: Text('Mi primer App'),
            ),
          ),
          body: Center(
            // color: Colors.blue,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              // crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Hola mundo',
                  style: TextStyle(fontSize: 30.0, color: Colors.blue),
                ),
                Text(
                  '$contador',
                  style: TextStyle(fontSize: 28.0, color: Colors.blueGrey),
                ),
              ],
            ),
          ),
          floatingActionButton: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              FloatingActionButton(
                backgroundColor: Colors.red,
                child: const Icon(Icons.exposure_minus_1),
                onPressed: () {
                  contador--;

                  //redibuja todos los widgets
                  //que sufrieron cambios
                  setState(() {});
                },
              ),
              const SizedBox(width: 15),
              FloatingActionButton(
                child: const Icon(Icons.plus_one),
                onPressed: () {
                  contador++;

                  //redibuja todos los widgets
                  //que sufrieron cambios
                  setState(() {});
                },
              ),
            ],
          )),
    );
  }
}
