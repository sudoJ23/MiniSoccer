import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:ionicons/ionicons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverList(delegate: SliverChildListDelegate([
              Container(
                margin: const EdgeInsets.all(20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          "Hello, John",
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 22,
                            color: Colors.black
                          ),
                        ),
                        const SizedBox(height: 10,),
                        Row(
                          children: [
                            const Icon(Iconsax.location, size: 18,),
                            const SizedBox(width: 5,),
                            const Text(
                              "Location",
                            ),
                            const SizedBox(width: 5,),
                            const Text(
                              "Surabaya",
                              style: TextStyle(
                                color: Colors.green,
                                fontWeight: FontWeight.bold
                              ),
                            ),
                            const SizedBox(width: 5,),
                            GestureDetector(
                              child: const Icon(
                                Iconsax.arrow_down_1,
                                size: 16,
                                color: Colors.red,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: ShapeDecoration(
                            shape: CircleBorder(
                              side: BorderSide(
                                width: 1,
                                style: BorderStyle.solid, color: Colors.grey.shade300
                              )
                            )
                          ),
                          padding: const EdgeInsets.all(10),
                          margin: const EdgeInsets.all(5),
                          child: GestureDetector(
                            child: const Icon(Ionicons.notifications_outline, color: Colors.black, size: 20,),
                            onTap: () => showDialog(
                              context: context,
                              builder: (context) => AlertDialog(
                                title: const Text("Notifikasi"),
                                actions: [
                                  TextButton(
                                    onPressed: () => Navigator.pop(context),
                                    child: const Text("Tutup")
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.all(5),
                          decoration: ShapeDecoration(
                            shape: CircleBorder(
                              side: BorderSide(
                                width: 1,
                                style: BorderStyle.solid, color: Colors.grey.shade300
                              )
                            )
                          ),
                          padding: const EdgeInsets.all(10),
                          child: GestureDetector(
                            child: const Icon(Ionicons.chatbox_ellipses_outline, color: Colors.black, size: 20,),
                            onTap: () {
                              Navigator.pushNamed(context, '/chat');
                            },
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                decoration: ShapeDecoration(
                  color: const Color.fromRGBO(35, 126, 72, 1),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  )
                ),
                padding: const EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Minisocc Super",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        SizedBox(height: 5,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Membership",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Icon(Iconsax.arrow_right_3, size: 16, color: Colors.white,)
                          ],
                        )
                      ],
                    ),
                    Container(
                      color: Colors.grey.shade400,
                      width: 2,
                      height: 40,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Icon(
                              Iconsax.add_circle5,
                              size: 26,
                              color: Colors.white,
                            ),
                            SizedBox(width: 10,),
                            Text(
                              "500.000",
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 18
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 5,),
                        Row(
                          children: [
                            Text(
                              "Minisocc Points",
                              style: TextStyle(
                                color: Colors.white,
                              ),
                            ),
                            Icon(Iconsax.arrow_right_3, size: 16, color: Colors.white,)
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.all(20),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: ShapeDecoration(
                            color: const Color.fromRGBO(217, 255, 207, 100),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                            )
                          ),
                          child: const Icon(
                            Ionicons.football_outline,
                            size: 36,
                          )
                        ),
                        const SizedBox(height: 5,),
                        const Text(
                          "Lapangan",
                          style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: ShapeDecoration(
                            color: const Color.fromRGBO(217, 255, 207, 100),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                            )
                          ),
                          child: const Icon(
                            Ionicons.ticket_outline,
                            size: 36,
                          ),
                        ),
                        const SizedBox(height: 5,),
                        const Text(
                          "Tiket",
                          style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: ShapeDecoration(
                            color: const Color.fromRGBO(217, 255, 207, 100),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                            )
                          ),
                          child: const Icon(
                            Ionicons.newspaper_outline,
                            size: 36,
                          ),
                        ),
                        const SizedBox(height: 5,),
                        const Text(
                          "Artikel Berita",
                          style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),
                        )
                      ],
                    ),
                    // Column(
                    //   children: [
                    //     Container(
                    //       padding: const EdgeInsets.all(10),
                    //       decoration: ShapeDecoration(
                    //         color: const Color.fromRGBO(217, 255, 207, 100),
                    //         shape: RoundedRectangleBorder(
                    //           borderRadius: BorderRadius.circular(10)
                    //         )
                    //       ),
                    //       child: const Icon(
                    //         Iconsax.ticket,
                    //         size: 36,
                    //       ),
                    //     ),
                    //     const SizedBox(height: 5,),
                    //     const Text(
                    //       "Artikel Berita",
                    //       style: TextStyle(
                    //         fontWeight: FontWeight.bold
                    //       ),
                    //     )
                    //   ],
                    // ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 20, top: 20),
                child: const Text(
                  "SEWA LAGI YUK ?",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16
                  ),
                ),
              ),
              const SizedBox(height: 20,),
              Container(
                margin: const EdgeInsets.all(20),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)
                  )
                ),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image(
                      image: AssetImage('assets/img/image72.png')
                    ),
                    SizedBox(height: 10,),
                    Text(
                      "Lapangan 1",
                      style: TextStyle(
                        fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),
              )
            ])),
          ]
        ),
      ),
    );
  }
}