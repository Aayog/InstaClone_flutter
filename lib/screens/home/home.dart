import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:not_insta/models/post.dart';
import 'package:not_insta/screens/home/user_post.dart';

const GAP = 10.0;

class Home extends StatelessWidget {
  final posts = Post.fetchAll();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.grey[100],
        title: titleSection,
      ),
      body: ListView(
        children: posts.map((post) => UserPost(post)).toList(),
      ),
    );
  }

  final titleSection = Container(
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: EdgeInsets.only(left: 10),
          alignment: Alignment.center,
          child: Text(
            'Not Instagram',
            style: GoogleFonts.satisfy(
              fontSize: 32,
              color: Colors.black,
            ),
          ),
        ),
        Container(
          child: Row(
            children: [
              Icon(
                FontAwesomeIcons.plusSquare,
                color: Colors.black,
              ),
              Padding(padding: const EdgeInsets.fromLTRB(GAP, 0, GAP, 0)),
              Icon(
                FontAwesomeIcons.heart,
                color: Colors.black,
              ),
              Padding(padding: const EdgeInsets.fromLTRB(GAP, 0, GAP, 0)),
              Icon(
                FontAwesomeIcons.facebookMessenger,
                color: Colors.black,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}
