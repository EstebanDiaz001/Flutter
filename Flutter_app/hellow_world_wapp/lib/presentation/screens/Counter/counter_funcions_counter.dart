import 'package:flutter/material.dart';

class CounterFuncionsScreen extends StatefulWidget {
  const CounterFuncionsScreen({super.key});

  @override
  State<CounterFuncionsScreen> createState() => _CounterFuncionsScreenState();
}

class _CounterFuncionsScreenState extends State<CounterFuncionsScreen> {
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Counter Funcions Screen ')),
        actions: [IconButton(
            onPressed: () {
              setState(() { 
              contador = 0;
              });
            },
            icon: const Icon(Icons.refresh_rounded)),
            ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$contador',
                style: const TextStyle(
                    fontSize: 160, fontWeight: FontWeight.w100)),
            Text((contador == 1 || contador ==-1) ? 'Click' : 'Clicks',
                style: const TextStyle(
                    fontSize: 25, color: Color.fromRGBO(25, 58, 128, 0.612))),
          ],
        ),
      ),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          FloatingActionButton(
        onPressed: () {
          setState(() {
            contador--;
          });
        },
        child: const Icon(Icons.exposure_minus_1_outlined),
      ),
      const SizedBox(width: 255),
      FloatingActionButton(
        onPressed: () {
          setState(() {
            contador++;
          });
        },
        child: const Icon(Icons.plus_one),
      ),
        ],
      )
    );
  }
}
