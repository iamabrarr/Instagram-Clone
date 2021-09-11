class UserMemories {
  String image;
  UserMemories({this.image});
}

List<UserMemories> memories = [
  user1,
  user2,
  user3,
];
UserMemories user1 = UserMemories(image: "assets/Users/memory1.jpg");
UserMemories user2 = UserMemories(image: "assets/Users/memory2.jpg");
UserMemories user3 = UserMemories(image: "assets/Users/memory3.jpg");
