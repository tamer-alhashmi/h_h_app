import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'color_screen.dart';
import 'component.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        // backgroundColor: const Color.fromARGB(255, 25, 1, 133),
        backgroundColor: HexColor('#536DFE'),
        title: Center(
            child: Container(
                padding: const EdgeInsets.all(8),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  // gradient:
                  //     LinearGradient(begin: Alignment.bottomRight, colors: [
                  //   Colors.black.withOpacity(.7),
                  //   Colors.black.withOpacity(.2),
                  // ])
                ),
                child: const Text(
                  'H&H Hotels',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ))),
      ),
      body: Container(
        margin: const EdgeInsets.only(top: 10, right: 10, left: 10),
        child: GridView.count(
          crossAxisSpacing: 3,
          mainAxisSpacing: 3,
          crossAxisCount: 3,
          children: colorsList
              .map((colorItem) => InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => ColorScreen(colorItem)));
                    },
                    child: Container(
                      margin: const EdgeInsets.only(
                          top: 5, bottom: 5, right: 5, left: 5),
                      decoration: BoxDecoration(
                          color: colorItem,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: const [
                            BoxShadow(
                                offset: Offset(
                                  -10,
                                  10,
                                ),
                                color: Color.fromARGB(255, 187, 187, 187),
                                blurRadius: 10)
                          ]),
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }
}
