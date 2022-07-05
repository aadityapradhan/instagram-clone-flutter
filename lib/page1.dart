import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:instagram/constants.dart';
import 'constants.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram/containers.dart';

class Page1 extends StatefulWidget {
  const Page1({Key? key}) : super(key: key);

  @override
  _Page1State createState() => _Page1State();
}

class _Page1State extends State<Page1> {
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return SafeArea(
      child: Scaffold(
        backgroundColor: kbackground,
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          toolbarHeight: screenHeight * 0.14,
          leadingWidth: screenWidth * 0.15,
          leading: Row(
            children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(25, 15, 0, 15),
                child: Container(
                  padding: EdgeInsets.fromLTRB(2.7, 4.8, 0, 2),
                  decoration: BoxDecoration(
                    boxShadow: [
                      BoxShadow(
                        color: Color(0xff6148D9).withOpacity(0.30),
                        offset: Offset(3, 3),
                      ),
                    ],
                    borderRadius: BorderRadius.circular(15),
                    color: kblue,
                  ),
                  child: Icon(
                    CupertinoIcons.heart_fill,
                    size: screenHeight * 0.04,
                  ),
                  height: screenHeight * 0.06,
                  width: screenHeight * 0.06,
                ),
              ),
            ],
          ),
          title: Row(
            children: [
              Appbaricon(
                screenWidth: screenHeight * 0.04,
                iconname: CupertinoIcons.bell,
              ),
              Appbaricon(
                screenWidth: screenHeight * 0.04,
                iconname: CupertinoIcons.search,
              ),
            ],
          ),
          actions: [
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 25, 0),
                  child: Container(
                    alignment: Alignment.centerLeft,
                    padding: EdgeInsets.all(8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8),
                      color: kforeground,
                    ),
                    height: screenHeight * 0.07,
                    width: screenWidth * 0.31,
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(6),
                          child: Container(
                            width: 40,
                            height: 40,
                            child: CachedNetworkImage(
                                fit: BoxFit.fill,
                                imageUrl: 'https://picsum.photos/300/300/'),
                          ),
                        ),
                        SizedBox(
                          width: 6,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Aaditya Pradhan',
                              style: GoogleFonts.montserrat(
                                  fontSize: 11,
                                  color: kwhite,
                                  fontWeight: FontWeight.normal),
                            ),
                            Text(
                              '@aaditya737',
                              style: GoogleFonts.montserrat(
                                  fontSize: 10,
                                  color: kwhite,
                                  fontWeight: FontWeight.w200),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
        body: Cont(),
      ),
    );
  }
}

class Appbaricon extends StatelessWidget {
  const Appbaricon({
    required this.screenWidth,
    required this.iconname,
  });

  final double screenWidth;
  final IconData iconname;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 15, 13, 15),
      child: Icon(
        iconname,
        color: kwhite,
        size: screenWidth,
      ),
    );
  }
}
