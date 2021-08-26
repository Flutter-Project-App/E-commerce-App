import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application/widgets/banner/banner_simple_1_widget.dart';
import 'package:flutter_application/widgets/group_products_widget.dart';
import 'package:flutter_application/widgets/simple_title_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverToBoxAdapter(
            child: BannerSimple1Widget.forDesignTime(),
          ),
          SliverToBoxAdapter(
            child: GroupProductsWidget(
              title: SimpleTitleWidget.forDesignTime(),
            ),
          ),
          SliverToBoxAdapter(
            child: GroupProductsWidget(
              title: SimpleTitleWidget(
                title: Text('New'),
                subtitle: Text("You've never seen it before!"),
                action: Text('View all'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
