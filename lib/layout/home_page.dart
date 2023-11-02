import 'package:flutter/material.dart';
import 'package:moviesapp/screens/browser_page.dart';
import 'package:moviesapp/screens/favourat_page.dart';
import 'package:moviesapp/screens/home.dart';
import 'package:moviesapp/screens/search_page.dart';
import 'package:moviesapp/shared/style/colors/app_colores.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int index = 0;
  List<Widget> pages = const [
    Home(),
    SearchPage(),
    BrowserPage(),
    FavouritPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: pages[index]),
      backgroundColor: AppColors.bgColor,
      bottomNavigationBar: BottomNavigationBar(
          onTap: (value) {
            index = value;
            setState(() {});
          },
          currentIndex: index,
          items: const [
            BottomNavigationBarItem(
              backgroundColor: AppColors.bottomNavigationBarbacKGroundColor,
              icon: Icon(Icons.home_sharp),
              label: 'HOME',
            ),
            BottomNavigationBarItem(
                backgroundColor: AppColors.bottomNavigationBarbacKGroundColor,
                icon: Icon(
                  Icons.search,
                ),
                label: 'SEARCH'),
            BottomNavigationBarItem(
              icon: Icon(Icons.movie),
              label: 'BROWSE',
              backgroundColor: AppColors.bottomNavigationBarbacKGroundColor,
            ),
            BottomNavigationBarItem(
                backgroundColor: AppColors.bottomNavigationBarbacKGroundColor,
                icon: ImageIcon(
                  AssetImage(
                    'assets/images/watchlist_icon.png',
                  ),
                ),
                label: 'FAVORITE'),
          ]),
    );
  }
}
