import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:todo_list_app/style/color_style.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQueryHeight = MediaQuery.of(context).size.height;
    final mediaQueryWidth = MediaQuery.of(context).size.width;
    var myAppBar = AppBar(
      backgroundColor: Colors.transparent,
      elevation: 0,
    );

    final bodyHeight = mediaQueryHeight -
        myAppBar.preferredSize.height -
        MediaQuery.of(context).padding.top;

    return Scaffold(
      backgroundColor: primary3,
      appBar: myAppBar,
      body: SizedBox(
        width: mediaQueryWidth,
        height: mediaQueryHeight,
        child: Stack(
          children: [
            Container(
              width: mediaQueryWidth,
              height: mediaQueryHeight * 0.3,
              color: primary3,
              padding: const EdgeInsets.only(left: 30, right: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Todo list",
                    style: GoogleFonts.varelaRound(
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "Buat List harianmu lebih mudah \ndan menyenangkan",
                    style: GoogleFonts.nunito(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              top: mediaQueryHeight * 0.15,
              child: Container(
                width: mediaQueryWidth,
                height: mediaQueryHeight * 0.8,
                padding: const EdgeInsets.only(left: 25, right: 25, top: 40),
                decoration: BoxDecoration(
                  color: primary1,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(40),
                  ),
                ),
                child: ListView.builder(
                  itemCount: 10,
                  itemBuilder: (context, index) {
                    return const Card(
                      child: ListTile(
                        leading: Icon(
                          Icons.check_box,
                          color: Colors.blue,
                        ),
                        title: Text("data"),
                        subtitle: Text("data"),
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
