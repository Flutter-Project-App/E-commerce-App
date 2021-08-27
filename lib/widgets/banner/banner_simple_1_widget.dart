import 'package:flutter/material.dart';
import 'package:flutter_application/gen/assets.gen.dart';
import 'package:flutter_application/theme/constants.dart';

class BannerSimple1Widget extends StatelessWidget {
  final String image;
  final String title;

  BannerSimple1Widget(this.image, this.title);

  factory BannerSimple1Widget.forDesignTime() {
    return BannerSimple1Widget(
        Assets.icons.demoSmallBanner.path, 'Street clothes');
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.92,
      child: Container(
        decoration:
            BoxDecoration(image: DecorationImage(image: AssetImage(image))),
        child: Stack(
          children: <Widget>[
            Positioned(
              child: Padding(
                padding: kPaddingStandard,
                child: Text(
                  title,
                  style: Theme.of(context).textTheme.headline1!.copyWith(
                      color: Colors.white),
                ),
              ),
              bottom: 0,
            ),
          ],
        ),
      ),
    );
  }
}
