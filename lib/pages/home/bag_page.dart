import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/gen/assets.gen.dart';
import 'package:flutter_application/pages/bag/bag_item_widget.dart';
import 'package:flutter_application/theme/constants.dart';

class BagPage extends StatefulWidget {
  const BagPage({Key? key}) : super(key: key);

  @override
  _BagPageState createState() => _BagPageState();
}

class _BagPageState extends State<BagPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ],
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          // SliverPersistentHeader(delegate: BagSliverPersistentHeaderDelegate)
          SliverPadding(
            padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
            sliver: SliverList(
              delegate: SliverChildListDelegate([
                BagItemWidget(Assets.icons.demoBag1.path),
                const Divider(
                  height: 16,
                  color: Colors.transparent,
                ),
                BagItemWidget(Assets.icons.demoBag2.path),
                const Divider(
                  height: 16,
                  color: Colors.transparent,
                ),
                BagItemWidget(Assets.icons.demoBag3.path),
                const Divider(
                  height: 16,
                  color: Colors.transparent,
                )
              ]),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Material(
        color: Colors.white,
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(left: 16),
                child: Row(
                  children: <Widget>[
                    const Expanded(child: Text('Enter your promo code')),
                    Container(
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: mainColor
                      ),
                      padding: const EdgeInsets.all(12),
                      child: const Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    )
                  ],
                ),
                decoration: ShapeDecoration(
                  color: Colors.white,
                  shadows: kElevationToShadow[2],
                  shape: const RoundedRectangleBorder(
                    borderRadius: BorderRadius.horizontal(
                      left: Radius.circular(8),
                      right: Radius.circular(24)
                    )
                  )
                ),
              ),
              const SizedBox(height: 28,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Total amount: ',
                    style: Theme.of(context)
                        .textTheme
                        .subtitle2!
                        .copyWith(color: secondaryColor),
                  ),
                  Text('124\$', style: Theme.of(context).textTheme.headline6),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Container(
                  width: double.infinity,
                  padding: const EdgeInsets.only(left: 2, right: 2),
                  height: 48,
                  decoration: const BoxDecoration(
                      color: redMainColor,
                      borderRadius: BorderRadius.all(Radius.circular(25))),
                  child: TextButton(
                      onPressed: () {
                        print(1);
                      },
                      child: Text(
                        'CHECKOUT',
                        style: Theme.of(context).textTheme.button,
                      )))
            ],
          ),
        ),
      ),
    );
  }
}
