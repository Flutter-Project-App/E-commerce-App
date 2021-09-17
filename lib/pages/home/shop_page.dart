import 'package:flutter/material.dart';
import 'package:flutter_application/pages/shop/category_page.dart';
import 'package:flutter_application/theme/constants.dart';

class ShopPage extends StatefulWidget {
  const ShopPage({Key? key}) : super(key: key);

  @override
  _ShopPageState createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> with SingleTickerProviderStateMixin {

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(initialIndex: 0, length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ],
        title: Text('Categories', style: Theme.of(context).textTheme.headline5,),
        centerTitle: true,
        bottom: TabBar(
          indicatorColor: Colors.black,
          tabs: [
            Tab(text: 'Women',),
            Tab(text: 'Men',),
            Tab(text: 'Kids',),
          ],
          controller: _tabController,
        ),
      ),
      body: PageView(
        children: [
          CategoryPage(),
          CategoryPage(),
          CategoryPage(),
        ],
      ),
    );
  }
}
