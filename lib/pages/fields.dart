import 'package:flutter/material.dart';
import 'package:ionicons/ionicons.dart';

class FieldPage extends StatefulWidget {
  const FieldPage({super.key});

  @override
  State<FieldPage> createState() => _FieldPageState();
}

class _FieldPageState extends State<FieldPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          const SliverAppBar(
            title: Text("Lapangan Yang Tersedia"),
            backgroundColor: Color.fromRGBO(35, 126, 72, 1),
            centerTitle: true,
          ),
          SliverList(delegate: SliverChildListDelegate([
            Container(
              // padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.all(10),
              decoration: ShapeDecoration(
                color: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)
                )
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Image(
                          image: AssetImage('assets/img/image72.png'),
                          width: 110,
                          height: 110,
                          alignment: Alignment.center,
                          fit: BoxFit.cover,
                        ),
                        const SizedBox(width: 10,),
                        Container(
                          color: Colors.lime,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              const Text(
                                "Lapangan 1",
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18
                                ),
                              ),
                              const SizedBox(height: 10,),
                              const Text("60x40 meter"),
                              const SizedBox(height: 40,),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    color: Colors.green,
                                    child: Row(
                                      children: [
                                        Icon(
                                          Ionicons.star,
                                          color: Colors.orange.shade400,
                                          size: 15,
                                        ),
                                        const SizedBox(width: 5,),
                                        const Text(
                                          "4.2",
                                          style: TextStyle(
                                            height: 1.5,
                                            fontWeight: FontWeight.bold
                                          ),
                                        ),
                                        const SizedBox(width: 5,),
                                        const Text(
                                          "(40)",
                                          style: TextStyle(
                                            height: 1.5
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    color: Colors.red,
                                    child: Row(
                                      children: [
                                        Text(
                                          "300k",
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 20
                                          ),
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  Divider(color: Colors.white,),
                  Padding(
                    padding: EdgeInsets.only(left: 10, right: 10, bottom: 10),
                    child: Text("Available 10 Slot Today")
                  )
                ],
              ),
            )
          ]))
        ],
      ),
    );
  }
}