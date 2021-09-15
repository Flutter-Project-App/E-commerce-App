import 'package:flutter/material.dart';
import 'package:flutter_application/gen/assets.gen.dart';
import 'package:flutter_application/pages/home/bag_page.dart';
import 'package:flutter_application/pages/home/favorites_page.dart';
import 'package:flutter_application/pages/home/home_page.dart';
import 'package:flutter_application/pages/home/profile_page.dart';
import 'package:flutter_application/pages/home/shop_page.dart';
import 'package:flutter_application/theme/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainPage extends StatefulWidget {
  const MainPage({Key? key}) : super(key: key);

  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  late PageController _pageController;
  int _currentIndex = 0;

  @override
  void initState() {
    super.initState();
    _pageController = PageController(initialPage: _currentIndex);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _pageController,
        onPageChanged: (index) {
          _currentIndex = index;
        },
        children: <Widget>[
          HomePage(),
          ShopPage(),
          BagPage(),
          FavoritesPage(),
          ProfilePage()
        ],
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
            color: Colors.transparent, boxShadow: kElevationToShadow[6]),
        child: ClipRRect(
          borderRadius: const BorderRadius.vertical(top: Radius.circular(16)),
          child: BottomNavigationBar(
            onTap: (index) {
              setState(() {
                _pageController.jumpToPage(index);
                _currentIndex = index;
              });
            },
            items: [
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(_currentIndex == 0
                      ? Assets.icons.icHome
                      : Assets.icons.icHomeInactive),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(_currentIndex == 1
                      ? Assets.icons.icShopActive
                      : Assets.icons.icShopInactive),
                  label: 'Shop'),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(_currentIndex == 2
                      ? Assets.icons.icBagActive
                      : Assets.icons.icBagInactive),
                  label: 'Bag'),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(_currentIndex == 3
                      ? Assets.icons.icFavoriteActive
                      : Assets.icons.icFavoriteInactive),
                  label: 'Favorites'),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(_currentIndex == 4
                      ? Assets.icons.icProfileActive
                      : Assets.icons.icProfileInactive),
                  label: 'Profile')
            ],
            currentIndex: _currentIndex,
            backgroundColor: Colors.white,
            fixedColor: Theme.of(context).colorScheme.secondary,
            selectedLabelStyle: Theme.of(context).textTheme.caption!.copyWith(
                fontWeight: FontWeight.w800,
                color: Theme.of(context).colorScheme.secondary),
            unselectedLabelStyle: Theme.of(context).textTheme.caption!.copyWith(
                fontWeight: FontWeight.w300,
                color: Theme.of(context).colorScheme.secondary),
            type: BottomNavigationBarType.fixed,
          ),
        ),
      ),
    );
  }
}
