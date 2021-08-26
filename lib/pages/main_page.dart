import 'package:flutter/material.dart';
import 'package:flutter_application/gen/assets.gen.dart';
import 'package:flutter_application/pages/home/bag_page.dart';
import 'package:flutter_application/pages/home/favorites_page.dart';
import 'package:flutter_application/pages/home/home_page.dart';
import 'package:flutter_application/pages/home/profile_page.dart';
import 'package:flutter_application/pages/home/shop_page.dart';
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
                  icon: SvgPicture.asset(
                    Assets.icons.icHomeInactive,
                    color: _currentIndex == 0
                        ? Theme.of(context).colorScheme.secondary
                        : Theme.of(context).hintColor,
                  ),
                  label: 'Home'),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    Assets.icons.icShop,
                    color: _currentIndex == 1
                        ? Theme.of(context).colorScheme.secondary
                        : Theme.of(context).hintColor,
                  ),
                  label: 'Shop'),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    Assets.icons.icBag,
                    color: _currentIndex == 2
                        ? Theme.of(context).colorScheme.secondary
                        : Theme.of(context).hintColor,
                  ),
                  label: 'Bag'),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    Assets.icons.icFavorite,
                    color: _currentIndex == 3
                        ? Theme.of(context).colorScheme.secondary
                        : Theme.of(context).hintColor,
                  ),
                  label: 'Favorites'),
              BottomNavigationBarItem(
                  icon: SvgPicture.asset(
                    Assets.icons.icProfile,
                    color: _currentIndex == 4
                        ? Theme.of(context).colorScheme.secondary
                        : Theme.of(context).hintColor,
                  ),
                  label: 'Profile')
            ],
            currentIndex: _currentIndex,
            backgroundColor: Colors.white,
            fixedColor: Theme.of(context).colorScheme.secondary,
            selectedLabelStyle: Theme.of(context).textTheme.caption!.copyWith(
              fontWeight: FontWeight.w800,
              color: Theme.of(context).colorScheme.secondary
            ),
            unselectedLabelStyle: Theme.of(context).textTheme.caption!.copyWith(
                fontWeight: FontWeight.w300,
                color: Theme.of(context).colorScheme.secondary
            ),
            type: BottomNavigationBarType.fixed,
          ),
        ),
      ),
    );
  }
}
