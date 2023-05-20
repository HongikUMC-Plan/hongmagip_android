import 'package:flutter/material.dart';
import 'package:hongmagip_android/screens/view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hongmagip',
      theme: ThemeData(
        fontFamily: 'Pretendard',
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: ViewScreen(),
    );
  }
}

// class ViewScreen extends StatefulWidget {
//   const ViewScreen({super.key, required this.title});
//
//   final String title;
//
//   @override
//   State<ViewScreen> createState() => _ViewScreenState();
// }
//
// class _ViewScreenState extends State<ViewScreen> {
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text(''),
//       ),
//     );
//   }
// }
