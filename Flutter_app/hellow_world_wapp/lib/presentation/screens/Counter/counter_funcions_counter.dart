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
          actions: [
            IconButton(
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
              Text((contador == 1 || contador == -1) ? 'Click' : 'Clicks',
                  style: const TextStyle(
                      fontSize: 25, color: Color.fromRGBO(25, 58, 128, 0.612))),
            ],
          ),
        ),
        floatingActionButton: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            CustomButtom(
              icon: Icons.refresh_outlined,
              onPressed: () {
                setState(() {
                  contador = 0;
                });
              },
            ),
            const SizedBox(height: 10),
            CustomButtom(
              icon: Icons.exposure_minus_1,
              onPressed: () {
                setState(() {
                  if (contador != 0) contador--;
                });
              },
            ),
            const SizedBox(height: 10),
            CustomButtom(
              icon: Icons.plus_one,
              onPressed: () {
                setState(() {
                  contador++;
                });
              },
            ),
          ],
        ));
  }
}

class CustomButtom extends StatelessWidget {
  final IconData icon;
  final Color? color;
  final VoidCallback? onPressed;

  const CustomButtom({
    super.key,
    required this.icon,
    this.onPressed,  this.color,
  });

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      shape: const StadiumBorder(),
      enableFeedback: true,
      onPressed: onPressed,
      child: Icon(icon, color: Colors.red),
    );
  }
}
