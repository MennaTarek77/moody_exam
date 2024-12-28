import 'package:flutter/material.dart';
import 'package:moody_exam/tabs/calendar_tab.dart';
import 'package:moody_exam/tabs/grid_tab.dart';
import 'package:moody_exam/tabs/home_tab.dart';
import 'package:moody_exam/tabs/user_tab.dart';

class Home extends StatefulWidget {
  static const String routeName = "/";

  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [Expanded(child: tabs[selectedIndex])],
      ),
      bottomNavigationBar: BottomNavigationBar(
          selectedItemColor: const Color(0xff027A48),
          unselectedItemColor: const Color(0xff667085),
           currentIndex: selectedIndex,
           type: BottomNavigationBarType.fixed,
          onTap: (value) {
            selectedIndex = value;
            setState(() {});
          },
          items: const [
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/icons/home-05.png")),
                label: ''),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/icons/grid-01.png")),
                label: ''),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/icons/calendar.png")),
                label: ''),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage("assets/icons/user-03.png")),
                label: ''),
          ]),
    );
  }

  List<Widget> tabs = [
    const HomeTab(),
    const GridTab(),
    const CalendarTab(),
    const UserTab()
  ];
}
