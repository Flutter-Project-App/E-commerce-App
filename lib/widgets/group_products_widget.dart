import 'package:flutter/material.dart';
import 'package:flutter_application/gen/assets.gen.dart';
import 'package:flutter_application/widgets/product_widget.dart';

class GroupProductsWidget extends StatelessWidget {
  final Widget title;
  GroupProductsWidget({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 35),
      child: Column(
        children: <Widget>[
          title,
          Container(
            width: double.infinity,
            child: IntrinsicHeight(
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                padding: const EdgeInsets.symmetric(horizontal: 16),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    ProductWidget('Evening Dress', Assets.icons.demoProduct2.path, '-20%'),
                    const VerticalDivider(width: 16, color: Colors.transparent,),
                    ProductWidget('Sport Dress', Assets.icons.demoProduct1.path, '-15%'),
                    const VerticalDivider(width: 16, color: Colors.transparent,),
                    ProductWidget('Sport Dress', Assets.icons.demoProduct1.path, '-20%'),
                    const VerticalDivider(width: 16, color: Colors.transparent,),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
