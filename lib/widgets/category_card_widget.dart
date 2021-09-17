import 'package:flutter/material.dart';
import 'package:flutter_application/gen/assets.gen.dart';

class CategoryCardWidget extends StatelessWidget {
  final Widget title;
  final String asset;

  CategoryCardWidget(this.title, this.asset);

  factory CategoryCardWidget.forDesignTime() {
    return CategoryCardWidget(Text('New'), Assets.icons.categoryCard1.path);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Card(
        margin: EdgeInsets.all(0),
        clipBehavior: Clip.antiAlias,
        child: AspectRatio(
          aspectRatio: 3.43,
          child: Container(
            child: Row(
              children: [
                Expanded(
                    child: Padding(
                  padding: EdgeInsets.all(16),
                  child: DefaultTextStyle(
                    style: Theme.of(context)
                        .textTheme
                        .headline5!
                        .copyWith(fontWeight: FontWeight.w800),
                    child: title,
                  ),
                )),
                Expanded(child: Image.asset(asset))
              ],
            ),
          ),
        ),
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(16))),
      ),
      onTap: () {},
    );
  }
}
