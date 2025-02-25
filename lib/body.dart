import 'package:flutter/material.dart';

class AppaBody extends StatefulWidget {
  const AppaBody({super.key});

  @override
  State<AppaBody> createState() => _AppaBodyState();
}

class _AppaBodyState extends State<AppaBody> {
  int currentIndex = 1;
  final List<Widget> pages = [
    Text("Home"),
    Text("profile"),
  ];
  void onClickMENU(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onClickMENU,
        currentIndex: currentIndex,
        items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: "home"),
        BottomNavigationBarItem(
            icon: Icon(Icons.navigation), label: "navigation"),
      ]),
    );
  }
}
