import 'package:flutter/material.dart';
import 'package:flutter_application/widgets/product_widget.dart';

class GroupProductsWidget extends StatelessWidget {
  final Widget title;
  GroupProductsWidget({required this.title});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: <Widget>[
          title,
          Container(
            width: double.infinity,
            child: IntrinsicHeight(
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                padding: EdgeInsets.symmetric(horizontal: 16),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: <Widget>[
                    ProductWidget(),
                    const VerticalDivider(width: 16, color: Colors.transparent,),
                    ProductWidget(),
                    const VerticalDivider(width: 16, color: Colors.transparent,),
                    ProductWidget(),
                    const VerticalDivider(width: 16, color: Colors.transparent,),
                    ProductWidget(),
                    const VerticalDivider(width: 16, color: Colors.transparent,)
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
