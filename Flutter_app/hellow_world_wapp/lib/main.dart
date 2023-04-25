import 'package:flutter/material.dart';
import 'package:hellow_world_wapp/presentation/screens/Counter/counter_funcions_counter.dart';

Future<void> main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.blue
      ),
      home: const CounterFuncionsScreen(),
    );
  }
}
