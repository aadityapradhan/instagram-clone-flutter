import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:instagram/constants.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:like_button/like_button.dart';
import 'dart:math';

class Cont extends StatefulWidget {
  const Cont({Key? key}) : super(key: key);

  @override
  _ContState createState() => _ContState();
}

class _ContState extends State<Cont> {
  bool isliked = false;
  int likecount = 7;
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;
    return ListView(
      children: [
        Feed(
          address: '@aaditya737',
          username: 'Aaditya Pradhan',
          imageurl: 'https://picsum.photos/200/300',
          imageurl2: 'https://picsum.photos/id/1006/400/200',
          screenHeight: screenHeight,
          screenWidth: screenWidth,
          isliked: isliked,
          likecount: likecount,
        ),
        Feed(
            address: '@nubin',
            username: 'Nabin Dahal',
            imageurl: 'https://picsum.photos/200/300?grayscale',
            imageurl2: 'https://picsum.photos/id/1002/400/200',
            screenHeight: screenHeight,
            screenWidth: screenWidth,
            isliked: isliked,
            likecount: likecount),
        Feed(
            address: '@rehan',
            username: 'Ragav Khatiwada',
            imageurl: 'https://picsum.photos/200/300/?blur',
            imageurl2: 'https://picsum.photos/id/1019/400/200',
            screenHeight: screenHeight,
            screenWidth: screenWidth,
            isliked: isliked,
            likecount: likecount),
        Feed(
            address: '@khalnayak',
            username: 'Binayak Rijal',
            imageurl: 'https://picsum.photos/200/300.jpg',
            imageurl2: 'https://picsum.photos/id/1025/400/200',
            screenHeight: screenHeight,
            screenWidth: screenWidth,
            isliked: isliked,
            likecount: likecount),
        Feed(
            address: '@lamo_Kesh',
            username: 'Bikesh Sapkota',
            imageurl: 'https://picsum.photos/200/300/?blur=2',
            imageurl2: 'https://picsum.photos/id/1023/400/200',
            screenHeight: screenHeight,
            screenWidth: screenWidth,
            isliked: isliked,
            likecount: likecount),
      ],
    );
  }
}

class Feed extends StatelessWidget {
  const Feed({
    required this.imageurl2,
    required this.imageurl,
    required this.screenHeight,
    required this.screenWidth,
    required this.isliked,
    required this.likecount,
    required this.username,
    required this.address,
  });
  final address;
  final username;
  final imageurl2;
  final imageurl;
  final double screenHeight;
  final double screenWidth;
  final bool isliked;
  final int likecount;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(25, 0, 25, 20),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          boxShadow: [
            BoxShadow(
              color: kforeground.withOpacity(0.10),
              offset: Offset(3, 3),
            )
          ],
          color: kforeground,
        ),
        height: screenHeight * 0.406,
        width: screenWidth * 0.1,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(11.5, 11, 7, 10),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.all(Radius.circular(6)),
                    child: Container(
                      height: 33,
                      width: 33,
                      child: CachedNetworkImage(
                          fit: BoxFit.fill, imageUrl: imageurl),
                    ),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  SizedBox(
                    height: 33,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          username,
                          style: GoogleFonts.montserrat(
                              fontSize: 12,
                              color: kwhite,
                              fontWeight: FontWeight.normal),
                        ),
                        Text(
                          address,
                          style: GoogleFonts.montserrat(
                              fontSize: 10,
                              color: kwhite,
                              fontWeight: FontWeight.w200),
                        ),
                      ],
                    ),
                  ),
                  // SizedBox(
                  //   width: screenWidth * 0.365,
                  // ),
                  Spacer(),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 0, 8, 0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(6),
                      child: Container(
                        height: 33,
                        width: 100,
                        color: kblue,
                        child: Center(
                          child: Text(
                            "Follow",
                            style: GoogleFonts.montserrat(
                              fontSize: 16,
                              color: kwhite,
                              fontWeight: FontWeight.w300,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ClipRRect(
              borderRadius: BorderRadius.circular(6),
              child: Container(
                height: screenHeight * 0.27,
                width: screenWidth * 0.85,
                child:
                    CachedNetworkImage(fit: BoxFit.fill, imageUrl: imageurl2),
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(15, 10, 0, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  LikeButton(
                    size: 30,
                    isLiked: isliked,
                    likeCount: likecount,
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Icon(
                    CupertinoIcons.bubble_left_fill,
                    color: Color(0xff9E9E9E),
                    size: 25.6,
                  ),
                  SizedBox(
                    width: 13,
                  ),
                  Icon(
                    CupertinoIcons.arrowshape_turn_up_right_fill,
                    color: Color(0xff9E9E9E),
                    size: 27,
                  ),
                  SizedBox(
                    width: screenWidth * 0.55,
                  ),
                  Icon(
                    CupertinoIcons.arrow_down_circle_fill,
                    color: Color(0xff9E9E9E),
                    size: 27,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
