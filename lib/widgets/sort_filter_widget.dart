import 'package:flutter/material.dart';
import 'package:flutter_application/gen/assets.gen.dart';
import 'package:flutter_application/theme/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SortFilterWidget extends StatefulWidget {
  @override
  _SortFilterWidgetState createState() => _SortFilterWidgetState();
}

class _SortFilterWidgetState extends State<SortFilterWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48,
      padding: EdgeInsets.only(left: 16),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
              onPressed: () {},
              child: Row(
                children: [
                  SvgPicture.asset(
                    Assets.icons.icFilter,
                    color: mainColor,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Text('Filters',
                        style: Theme.of(context).textTheme.bodyText1),
                  )
                ],
              )),
          TextButton(
              onPressed: () {},
              child: Row(
                children: [
                  SvgPicture.asset(
                    Assets.icons.icSort,
                    color: mainColor,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 8),
                    child: Text('Price: lowest to high',
                        style: Theme.of(context).textTheme.bodyText1),
                  )
                ],
              )),
          IconButton(onPressed: () {}, icon: Icon(Icons.list_sharp))
        ],
      ),
    );
  }
}
