class UserProfile {
  final int id;
  final String userName;
  final String fName;
  final String lName;
  final String email;
  final int followers;
  final int following;

  UserProfile({
    this.id,
    this.userName,
    this.fName,
    this.lName,
    this.email,
    this.followers,
    this.following,
  });

  static List<UserProfile> fetchAll() {
    return [
      UserProfile(
        id: 1,
        userName: 'mmcgee',
        fName: "Mary",
        lName: "McGee",
        email: "marrymcgee@gmail.com",
      ),
      UserProfile(
        id: 2,
        userName: 'jdoe',
        fName: "John",
        lName: "Doe",
        email: "johndoe@gmail.com",
      ),
      UserProfile(
        id: 3,
        userName: 'sanchar',
        fName: "Sanchar",
        lName: "Koirala",
        email: "skoirala@gmail.com",
      )
    ];
  }

  static UserProfile getById(int id) {
    List<UserProfile> profiles = UserProfile.fetchAll();
    for (var i = 0; i < profiles.length; i++) {
      if (profiles[i].id == id) {
        return profiles[i];
      }
    }
    return null;
  }
}
