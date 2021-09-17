import 'package:flutter/material.dart';
import 'package:flutter_application/theme/constants.dart';

class BannerSimple2Widget extends StatelessWidget {
  final Widget title;
  final Widget subTitle;

  BannerSimple2Widget(this.title, this.subTitle);

  factory BannerSimple2Widget.forDesignTime() {
    return BannerSimple2Widget(Text('SUMMER SALES'), Text('Up to 50% off'));
  }

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 3.43,
      child: Container(
        decoration: const ShapeDecoration(
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(8))),
            color: redMainColor),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            DefaultTextStyle(
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontWeight: FontWeight.w800, fontSize: 24, color: Colors.white),
                child: title),
            DefaultTextStyle(
                style: Theme.of(context)
                    .textTheme
                    .headline5!
                    .copyWith(fontSize: 14, color: Colors.white),
                child: subTitle),
          ],
        ),
      ),
    );
  }
}
