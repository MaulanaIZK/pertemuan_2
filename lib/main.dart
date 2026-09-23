import "package:flutter/material.dart";

import "modul_3/modul_03_app.dart";
import "modul_2/academic_dashboard_screen.dart";
import "modul_4";

main() {
  runApp((AcademicDashboardScreen()));
}

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(home: HomeScreen());
//   }
// }

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text('Kelas TRPL 2B Gila')),

//       body: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text('Selamat Sore'),
//           Text('Lagi ngantuk'),
//           Text('Pulang yuk!'),
//         ],
//       ),
//     );
//   }
// }
