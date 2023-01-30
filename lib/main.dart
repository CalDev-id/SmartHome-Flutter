import 'package:flutter/material.dart';
import 'package:ichi_app/SmartHouse/smart_house.dart';

import 'Components/home_page.dart';
import 'SmartHouse/smart_house.dart';

void main() {
  runApp(MyApp());
}

//stateless widget

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//         title: 'Ecanteen',
//         theme: ThemeData(
//           primarySwatch: Colors.blue,
//         ),
//         home: Scaffold(
//           appBar: AppBar(
//             backgroundColor: Colors.transparent,
//             elevation: 0, //menghilangkan garis bawah
//             title: const Center(
//                 child: Text('Ecanteen',
//                     style: TextStyle(
//                         color: Colors.green, fontWeight: FontWeight.w700))),
//           ),
//           body: Column(
//             // ignore: prefer_const_literals_to_create_immutables
//             mainAxisAlignment: MainAxisAlignment.start,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: <Widget>[
//               Container(
//                 // ignore: sort_child_properties_last
//                 width: 350,
//                 margin: const EdgeInsets.only(top: 20, bottom: 20),
//                 child: const Text(
//                   "Belanja Yang Banyak Ya Murid Murid Budiman!",
//                   style: TextStyle(
//                     fontSize: 25,
//                     fontWeight: FontWeight.w800,
//                   ),
//                   maxLines: 2,
//                 ),
//               ),
//               Row(
//                 mainAxisAlignment: MainAxisAlignment.spaceAround,
//                 children: <Widget>[
//                   Container(
//                     padding: const EdgeInsets.only(
//                         left: 10, right: 10, top: 8, bottom: 8),
//                     decoration: BoxDecoration(
//                         color: Colors.green,
//                         borderRadius: BorderRadius.circular(20)),
//                     child: const Text(
//                       "Promo",
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ),
//                   Container(
//                     padding: const EdgeInsets.only(
//                         left: 10, right: 10, top: 8, bottom: 8),
//                     decoration: BoxDecoration(
//                         color: Colors.green,
//                         borderRadius: BorderRadius.circular(20)),
//                     child: const Text(
//                       "New",
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ),
//                   Container(
//                     padding: const EdgeInsets.only(
//                         left: 10, right: 10, top: 8, bottom: 8),
//                     decoration: BoxDecoration(
//                         color: Colors.green,
//                         borderRadius: BorderRadius.circular(20)),
//                     child: const Text(
//                       "Popular",
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ),
//                   Container(
//                     padding: const EdgeInsets.only(
//                         left: 10, right: 10, top: 8, bottom: 8),
//                     decoration: BoxDecoration(
//                         color: Colors.green,
//                         borderRadius: BorderRadius.circular(20)),
//                     child: const Text(
//                       "Free",
//                       style: TextStyle(color: Colors.white),
//                     ),
//                   ),
//                   Container()
//                 ],
//               ),
//               //tabbar kanan
//               const rightTab(
//                 text: 'ayam',
//               ),
//             ],
//           ),
//         ));
//   }
// }

//materi statefull widget

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   int number = 0;
//   void tekanTombol() {
//     setState(() {
//       number = number + 1;
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.transparent,
//           elevation: 0, //menghilangkan garis bawah
//           title: const Center(
//               child: Text('Ecanteen',
//                   style: TextStyle(
//                       color: Colors.green,
//                       fontSize: 23,
//                       fontWeight: FontWeight.w700))),
//         ),
//         body: Center(
//             child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: <Widget>[
//             Text(
//               number.toString(),
//               style: TextStyle(fontSize: 10 + number.toDouble()),
//             ),
//             ElevatedButton(
//               onPressed: () {
//                 tekanTombol();
//               },
//               style: ButtonStyle(
//                   backgroundColor:
//                       MaterialStateProperty.all<Color>(Colors.green)),
//               child: const Text('Tambah'),
//             ),
//           ],
//         )),
//       ),
//     );
//   }
// }

//materi anonymous method

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   String message = 'tombol belum ditekan';

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text(
//             'anonymous method',
//             style: TextStyle(fontFamily: "Poppins"),
//           ),
//         ),
//         body: Center(
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 message,
//                 style: const TextStyle(fontFamily: 'Poppins'),
//               ),
//               ElevatedButton(
//                   onPressed: () {
//                     setState(() {
//                       message = 'tombol sudah ditekan';
//                     });
//                   },
//                   child: const Text('tekan saya'))
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }

//materi listview

// class MyApp extends StatefulWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   State<MyApp> createState() => _MyAppState();
// }

// class _MyAppState extends State<MyApp> {
//   int menu = 1;
//   List<Widget> widgets = [];

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       home: Scaffold(
//         appBar: AppBar(
//           title: const Text('Tambah Menu'),
//           backgroundColor: Colors.green,
//         ),
//         body: ListView(
//           children: [
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceAround,
//               children: [
//                 ElevatedButton(
//                     onPressed: () {
//                       setState(() {
//                         widgets.add(Text(
//                           'Menu ke-' + menu.toString(),
//                           style: const TextStyle(fontSize: 30),
//                         ));
//                         menu++;
//                       });
//                     },
//                     child: const Text('Tambah Menu')),
//                 ElevatedButton(
//                     onPressed: () {
//                       setState(() {
//                         widgets.removeLast();
//                         menu--;
//                       });
//                     },
//                     child: const Text('Hapus Menu')),
//                 GestureDetector(
//                     onTap: () {
//                       setState(() {
//                         widgets.clear();
//                         menu = 1;
//                       });
//                     },
//                     child: Container(
//                       padding: const EdgeInsets.only(
//                           left: 10, right: 10, top: 8, bottom: 8),
//                       decoration: BoxDecoration(
//                           color: Colors.green,
//                           borderRadius: BorderRadius.circular(20)),
//                       child: const Text(
//                         "Clear Menu",
//                         style: TextStyle(
//                           color: Colors.white,
//                         ),
//                       ),
//                     )),
//               ],
//             ),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: widgets,
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// Materi stack

// class MyApp extends StatelessWidget {
//   const MyApp({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       home: Scaffold(
//         appBar: AppBar(
//           title: Text('Stack'),
//           backgroundColor: Colors.green,
//         ),
//         body: Stack(
//           children: [
//             Column(children: [
//               Flexible(
//                   flex: 1,
//                   child: Row(
//                     children: [
//                       Flexible(
//                           flex: 1,
//                           child: Container(
//                             color: Colors.white,
//                           )),
//                       Flexible(
//                           flex: 1,
//                           child: Container(
//                             color: Colors.black12,
//                           )),
//                     ],
//                   )),
//               Flexible(
//                   flex: 1,
//                   child: Row(
//                     children: [
//                       Flexible(
//                           flex: 1,
//                           child: Container(
//                             color: Colors.black12,
//                           )),
//                       Flexible(
//                           flex: 1,
//                           child: Container(
//                             color: Colors.white,
//                           )),
//                     ],
//                   )),
//             ]),
//             ListView(
//               children: [
//                 Column(
//                   children: [
//                     for (var i = 0; i < 50; i++)
//                       Container(
//                         child: Text(
//                           'ini adalah text',
//                           style: TextStyle(fontSize: 30),
//                         ),
//                       ),
//                   ],
//                 )
//               ],
//             ),
//             Container(
//               margin: EdgeInsets.only(bottom: 20),
//               child: Align(
//                   alignment: Alignment.bottomCenter,
//                   child:
//                       ElevatedButton(onPressed: () {}, child: Text('tombol'))),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// kerja disini

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: HomePage(),
      home: const SmartHome(),
    );
  }
}
