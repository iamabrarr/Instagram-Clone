class UserPosts {
  String post, postcaption;
  UserPosts({
    this.post,
    this.postcaption,
  });
}

List<UserPosts> posts = [post1, post2, post3, post4, post5];
UserPosts post1 = UserPosts(
    post: "assets/Posts/post1.jpg",
    postcaption: "  Life is the biggest party you'll ever be at.");
UserPosts post2 = UserPosts(
    post: "assets/Posts/post2.jpg",
    postcaption:
        "  An apple a day will keep anyone away if you throw it hard enough.");
UserPosts post3 = UserPosts(
    post: "assets/Posts/post3.jpg",
    postcaption: "  Give second chances but not for the same mistake.");
UserPosts post4 = UserPosts(
    post: "assets/Posts/post4.jpg",
    postcaption:
        "  Never sacrifice three things: family, love, and or yourself.");
UserPosts post5 = UserPosts(
    post: "assets/Posts/post4.jpg",
    postcaption: "  I'm an original and that's perfection in itself.");
