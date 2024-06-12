import 'package:flutter/material.dart';
import 'package:minisoccer/pages/booking.dart';
import 'package:minisoccer/pages/chat.dart';
import 'package:minisoccer/pages/core.dart';
import 'package:minisoccer/pages/fields.dart';
import 'package:minisoccer/pages/home.dart';
import 'package:minisoccer/pages/news.dart';
import 'package:minisoccer/pages/profile.dart';

void main() {
  runApp(const Main());
}

class Main extends StatelessWidget {
  const Main({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => const CorePage(),
        '/chat': (context) => const ChatPage(),
        '/field': (context) => const FieldPage(),
        '/news': (context) => const NewsPage(),
        '/home': (context) => const HomePage(),
        '/booking': (context) => const BookingPage(),
        '/profile': (context) => const ProfilePage()
      },
    );
  }
}
