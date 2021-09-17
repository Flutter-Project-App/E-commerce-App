import 'package:flutter/material.dart';
import 'package:flutter_application/gen/assets.gen.dart';
import 'package:flutter_application/widgets/banner/banner_simple_2_widget.dart';
import 'package:flutter_application/widgets/category_card_widget.dart';

class CategoryPage extends StatefulWidget {
  
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: EdgeInsets.all(16),
        children: [
          BannerSimple2Widget.forDesignTime(),
          Divider(color: Colors.transparent,),
          CategoryCardWidget.forDesignTime(),
          Divider(color: Colors.transparent,),
          CategoryCardWidget(Text('Clothes'), Assets.icons.categoryCard2.path),
          Divider(color: Colors.transparent,),
          CategoryCardWidget(Text('Shoes'), Assets.icons.categoryCard1.path),
          Divider(color: Colors.transparent,),
          CategoryCardWidget(Text('Accesories'), Assets.icons.categoryCard2.path),
        ],
      ),
    );
  }
}
