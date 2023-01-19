import 'package:flutter/material.dart';
import 'package:instagram_clone/screen/feed_screen.dart';
import 'package:instagram_clone/screen/market_screen.dart';
import 'package:instagram_clone/screen/profile_screen.dart';
import 'package:instagram_clone/screen/reel_screen.dart';
import 'package:instagram_clone/screen/search_screen.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Widget> bottonNavPage = [
    FeedScreen(),SearchScreen(),ReelScreen(),MarketScreen(),ProfileScreen()
  ];

  int currentIndex = 0;

  _changeBottomNavPage(int pageIndex){
    setState(() {
      currentIndex = pageIndex;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: bottonNavPage.elementAt(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        showUnselectedLabels: false,
        showSelectedLabels: false,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Feed",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Search",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.video_library_outlined),
            label: "Reels",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: "Market",
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 20,
              backgroundColor: Colors.red,
            ),
            label: "Profile",
          ),
        ],
        currentIndex: currentIndex,
        onTap: _changeBottomNavPage,
      ),
    );
  }
}
