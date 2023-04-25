import 'package:flutter/material.dart';

class CounterScreen extends StatefulWidget {
  const CounterScreen({super.key});

  @override
  State<CounterScreen> createState() => _CounterScreenState();
}

class _CounterScreenState extends State<CounterScreen> {
  int contador = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Counter Screen')),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('$contador',
                    style: const TextStyle(
                    fontSize: 160, fontWeight: FontWeight.w100)
                    ), 
            Text((contador==1)?'Click':'Clicks',
                    style: const TextStyle(
                    fontSize: 25, color: Color.fromRGBO(25, 58, 128, 0.612))
                    ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            contador++;
          });
        },
        child: const Icon(Icons.plus_one),
      ),
    );
  }
}

//========================================================================================================//


// import 'package:flutter/material.dart';

// class CounterScreen extends StatefulWidget {
//   const CounterScreen({super.key});

//   @override
//   State<CounterScreen> createState() => _CounterScreenState();
// }

// class _CounterScreenState extends State<CounterScreen> {
//   int contador = 0;

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Center(child: Text('Titulo de la App ')),
//       ),
//       body: Center(
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Text('$contador',
//                 style: const TextStyle(
//                     fontSize: 160, fontWeight: FontWeight.w100)),
//             const Text('Cantidad De Clicks',
//                 style: TextStyle(
//                     fontSize: 25, color: Color.fromRGBO(25, 58, 128, 0.612))),
//           ],
//         ),
//       ),
//       persistentFooterButtons: [
//         FloatingActionButton(
//         onPressed: () {
//           setState(() {
//             contador++;
//           });
//         },
//         child: const Icon(Icons.plus_one),
//       ),
//         FloatingActionButton(
//         onPressed: () {
//           setState(() {
//             contador--;
//           });
//         },
//         child: const Icon(Icons.exposure_neg_1_outlined),
//       ),
//       ],
//     );
//   }
// }
