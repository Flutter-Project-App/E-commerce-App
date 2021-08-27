import 'package:flutter/material.dart';
import 'package:flutter_application/theme/constants.dart';

class SimpleTitleWidget extends StatelessWidget {
  final Widget? action;
  final Widget? title;
  final Widget? subtitle;

  SimpleTitleWidget({this.action, this.title, this.subtitle});

  factory SimpleTitleWidget.forDesignTime() {
    return SimpleTitleWidget(
      title: Text('Sale'),
      action: Text('View all'),
      subtitle: Text('Super summer sale'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: kPaddingStandard,
      child: Row(
        children: <Widget>[
          Expanded(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              DefaultTextStyle(
                  style: Theme.of(context).textTheme.headline3!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onBackground),
                  child: title!),
              const SizedBox(height: 4,),
              DefaultTextStyle(
                  style: Theme.of(context).textTheme.caption!, child: subtitle!)
            ],
          )),
          DefaultTextStyle(
              style: Theme.of(context).textTheme.bodyText2!.copyWith(
                fontWeight: FontWeight.w300
              ), child: action!)
        ],
      ),
    );
  }
}
