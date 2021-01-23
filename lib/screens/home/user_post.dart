import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:not_insta/models/post.dart';

const GAP = 10.0;

class UserPost extends StatelessWidget {
  final Post post;
  UserPost(this.post);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Padding(padding: EdgeInsets.only(right: GAP)),
                Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.fill, image: AssetImage(post.urlImage)),
                  ),
                ),
                Padding(padding: EdgeInsets.only(right: GAP)),
                Text(post.user.userName),
              ],
            ),
            Icon(
              Icons.more_horiz_outlined,
              color: Colors.black,
            ),
          ],
        ),
        Image(
          fit: BoxFit.fill,
          image: AssetImage(post.urlImage),
        ),
        Padding(padding: EdgeInsets.only(bottom: GAP)),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              child: Row(
                children: [
                  Padding(padding: const EdgeInsets.fromLTRB(GAP, 0, GAP, 0)),
                  Icon(FontAwesomeIcons.heart),
                  Padding(padding: const EdgeInsets.fromLTRB(GAP, 0, GAP, 0)),
                  Icon(FontAwesomeIcons.comment),
                  Padding(padding: const EdgeInsets.fromLTRB(GAP, 0, GAP, 0)),
                  Icon(FontAwesomeIcons.paperPlane),
                  Padding(padding: const EdgeInsets.fromLTRB(GAP, 0, GAP, 0)),
                ],
              ),
            ),
            Icon(FontAwesomeIcons.bookmark),
          ],
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(padding: EdgeInsets.only(top: GAP * 3, right: GAP * 2)),
            Text(
              (post.likes == null ? '0' : post.likes.length.toString()) +
                  ' likes',
            ),
          ],
        ),
        post.caption == null
            ? Text("")
            : Padding(
                padding: const EdgeInsets.only(left: GAP * 2),
                child: Text(
                  post.user.userName + "  " + post.caption,
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
              ),
        post.comments == null
            ? Text("")
            : Padding(
                padding: const EdgeInsets.only(left: GAP * 2),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: post.comments
                      .map((comment) => Row(
                            children: [
                              Text(
                                comment.user.userName,
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                              Text('  ' + comment.comment)
                            ],
                          ))
                      .toList(),
                ),
              ),
        Padding(padding: const EdgeInsets.only(bottom: GAP * 3)),
      ],
    );
  }
}
