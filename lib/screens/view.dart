import 'package:flutter/material.dart';
import 'package:hongmagip_android/config/palette.dart';

class ViewScreen extends StatefulWidget {
  const ViewScreen({Key? key}) : super(key: key);

  @override
  _ViewScreenState createState() => _ViewScreenState();
}

class _ViewScreenState extends State<ViewScreen> {
  bool isViewSc = true;
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Palette.defaultColor
    );
  }
}