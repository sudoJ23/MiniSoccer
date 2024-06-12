import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(35, 126, 72, 1),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: Column(
                children: [
                  SizedBox(height: 20,),
                  Image(
                    height: 150,
                    image: AssetImage('assets/img/profile.png')
                  ),
                  SizedBox(height: 20,),
                  Text(
                    "Jeremi",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                      color: Colors.white
                    ),
                  ),
                  SizedBox(height: 5,),
                  Text(
                    "083140141216",
                    style: TextStyle(
                      fontWeight: FontWeight.w100,
                      fontSize: 16,
                      color: Colors.white
                    ),
                  ),
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 20, bottom: 5),
                  padding: const EdgeInsets.all(10),
                  decoration: ShapeDecoration(
                    color: const Color.fromRGBO(40, 41, 63, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Ionicons.person, size: 28,
                            color: Colors.white,
                          ),
                          SizedBox(width: 10,),
                          Text(
                            "Ubah Profile",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 18
                            ),
                          ),
                        ],
                      ),
                      Icon(
                        Ionicons.caret_forward,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
                  padding: const EdgeInsets.all(10),
                  decoration: ShapeDecoration(
                    color: const Color.fromRGBO(40, 41, 63, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Ionicons.lock_closed, size: 28,
                            color: Colors.white,
                          ),
                          SizedBox(width: 10,),
                          Text(
                            "Ganti Password",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 18
                            ),
                          ),
                        ],
                      ),
                      Icon(
                        Ionicons.caret_forward,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 5, bottom: 5),
                  padding: const EdgeInsets.all(10),
                  decoration: ShapeDecoration(
                    color: const Color.fromRGBO(40, 41, 63, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Ionicons.calendar, size: 28,
                            color: Colors.white,
                          ),
                          SizedBox(width: 10,),
                          Text(
                            "Riwayat Penyewaan",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 18
                            ),
                          ),
                        ],
                      ),
                      Icon(
                        Ionicons.caret_forward,
                        color: Colors.white,
                      )
                    ],
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(left: 20, right: 20, top: 50, bottom: 5),
                  padding: const EdgeInsets.all(10),
                  decoration: ShapeDecoration(
                    color: const Color.fromRGBO(40, 41, 63, 1),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10)
                    )
                  ),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          Icon(
                            Ionicons.exit_outline, size: 28,
                            color: Colors.white,
                          ),
                          SizedBox(width: 10,),
                          Text(
                            "Keluar",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 18
                            ),
                          ),
                        ],
                      ),
                      Icon(
                        Ionicons.caret_forward,
                        color: Colors.white,
                      )
                    ],
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}