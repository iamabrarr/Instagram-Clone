import 'package:get/get_connect/http/src/request/request.dart';

class Users {
  String name,
      bio,
      image,
      postsInnum,
      followers,
      following,
      story,
      storytime,
      posttime,
      postcaption,
      post;
  bool isStory;
  Users({
    this.isStory,
    this.name,
    this.bio,
    this.image,
    this.postsInnum,
    this.followers,
    this.following,
    this.story,
    this.posttime,
    this.storytime,
    this.post,
    this.postcaption,
  });
}

List<Users> userdetails = [
  user1,
  user2,
  user3,
  user4,
];
Users user1 = Users(
  postsInnum: '5',
  isStory: true,
  name: 'Abrar',
  story: "assets/Users/story3.jpg",
  image: "assets/Users/abrar.jpg",
  bio: "Creating a life, I love.",
  followers: '1023',
  following: '12',
  storytime: '15 minutes',
  posttime: '3 minutes',
  post: "assets/Posts/post1.jpg",
  postcaption: "  Life is the biggest party you'll ever be at.",
);
Users user2 = Users(
    name: 'Amad',
    isStory: false,
    story: "assets/Users/story.jpg",
    following: '765',
    bio: "Simplicity is the key to happiness.",
    image: "assets/Users/amad.jpg",
    storytime: '7h',
    posttime: '1 hours',
    followers: '12.1k',
    postsInnum: '5',
    post: "assets/Posts/post2.jpg",
    postcaption:
        "  An apple a day will keep anyone away if you throw it hard enough.");
Users user3 = Users(
    isStory: true,
    story: "assets/Users/story2.jpg",
    name: 'ali',
    followers: '15.4k',
    following: '231',
    postsInnum: '5',
    post: "assets/Posts/post3.jpg",
    postcaption: "  Give second chances but not for the same mistake.",
    bio: "In a world of worriers, be a warrior.",
    image: "assets/Users/ali.jpg",
    storytime: '4 hours',
    posttime: '20 hours');
Users user4 = Users(
    isStory: true,
    postsInnum: '5',
    followers: '32k',
    following: '165',
    story: "assets/Users/story.jpg",
    name: 'hamza',
    bio: "We have tomorrows for reason.",
    image: "assets/Users/hamza.jpg",
    storytime: '43m',
    post: "assets/Posts/post4.jpg",
    postcaption: "  I'm an original and that's perfection in itself.",
    posttime: '2 minutes');
