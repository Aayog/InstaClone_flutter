import 'package:not_insta/models/user_profile.dart';

import 'comment.dart';

class Post {
  final int id;
  final UserProfile user;
  final String urlImage;
  final List<Comment> comments;
  final List<UserProfile> likes;
  final String caption;

  Post({
    this.id,
    this.user,
    this.urlImage,
    this.comments,
    this.likes,
    this.caption,
  });
  static List<Post> fetchAll() {
    return [
      Post(
        id: 1,
        likes: [UserProfile.getById(1)],
        comments: [Comment(user: UserProfile.getById(2), comment: "Very nice")],
        urlImage: 'assets/images/dog.jpg',
        user: UserProfile.getById(1),
        caption: 'Isn\'t he cutee',
      ),
      Post(
        id: 2,
        likes: [UserProfile.getById(1)],
        comments: [
          Comment(user: UserProfile.getById(1), comment: "Woah! dragon")
        ],
        urlImage: 'assets/images/comodo.jpg',
        user: UserProfile.getById(2),
        caption: 'I\'m calling it Norbert.',
      ),
      Post(
        id: 3,
        likes: [
          UserProfile.getById(1),
          UserProfile.getById(1),
        ],
        comments: [Comment(user: UserProfile.getById(1), comment: "BreaD?")],
        urlImage: 'assets/images/duck.jpg',
        user: UserProfile.getById(1),
      ),
      Post(
        id: 4,
        likes: [UserProfile.getById(1)],
        comments: null,
        urlImage: 'assets/images/iguana.jpg',
        user: UserProfile.getById(2),
      ),
      Post(
        id: 5,
        likes: [UserProfile.getById(1), UserProfile.getById(2)],
        comments: [
          Comment(
            user: UserProfile.getById(2),
            comment: "Funniest thing I've ever seen",
          ),
          Comment(
            user: UserProfile.getById(1),
            comment: "Haha!",
          )
        ],
        urlImage: 'assets/images/rick_morty.jpg',
        user: UserProfile.getById(1),
      ),
      Post(
        id: 6,
        likes: [UserProfile.getById(1), UserProfile.getById(2)],
        comments: [
          Comment(
            user: UserProfile.getById(2),
            comment: "That looks cool!",
          ),
          Comment(
            user: UserProfile.getById(1),
            comment: "Woah!",
          )
        ],
        urlImage: 'assets/images/tree.jpg',
        user: UserProfile.getById(3),
        caption: 'Hakuna-Matata',
      ),
    ];
  }

  static getById(int id) {
    List<Post> posts = Post.fetchAll();
    for (var i = 0; i < posts.length; i++) {
      if (posts[i].id == id) {
        return posts[i];
      }
    }
    return null;
  }
}
