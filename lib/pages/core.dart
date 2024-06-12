import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';
import 'package:minisoccer/pages/booking.dart';
import 'package:minisoccer/pages/fields.dart';
import 'package:minisoccer/pages/home.dart';
import 'package:minisoccer/pages/news.dart';
import 'package:minisoccer/pages/profile.dart';

class CorePage extends StatefulWidget {
  const CorePage({super.key});

  @override
  State<CorePage> createState() => _CorePageState();
}

class _CorePageState extends State<CorePage> {
  int _currentIndex = 0;

  final List<Widget> _children = [
    const HomePage(),
    const FieldPage(),
    const BookingPage(),
    const ProfilePage(),
  ];

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _currentIndex,
        children: _children,
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        backgroundColor: Colors.blue,
        showUnselectedLabels: true,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        items: const [
           BottomNavigationBarItem(
            icon: Icon(Ionicons.home_outline),
            activeIcon: Icon(Ionicons.home),
            label: "Home",
            backgroundColor: Color.fromRGBO(35, 126, 72, 1),
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.football_outline),
            activeIcon: Icon(Ionicons.football),
            label: "Lapangan"
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.calendar_outline),
            activeIcon: Icon(Ionicons.calendar),
            label: "Pemesanan"
          ),
          BottomNavigationBarItem(
            icon: Icon(Ionicons.person_outline),
            activeIcon: Icon(Ionicons.person),
            label: "Profil"
          )
        ],
      ),
    );
  }
}