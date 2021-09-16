import 'package:flutter/material.dart';
import 'package:flutter_application/gen/assets.gen.dart';
import 'package:flutter_application/theme/constants.dart';
import 'package:flutter_application/widgets/product_catalog_widget.dart';
import 'package:flutter_application/widgets/sort_filter_widget.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FavoritesPage extends StatefulWidget {
  const FavoritesPage({Key? key}) : super(key: key);

  @override
  _FavoritesPageState createState() => _FavoritesPageState();
}

class _FavoritesPageState extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ],
        bottom: PreferredSize(
          child: Container(
            height: 96,
            child: Column(
              children: [
                Container(
                  height: 48,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    padding: EdgeInsets.only(left: 16, right: 16),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RawChip(
                          label: Container(
                            child: Text(
                              'Summer',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                            constraints: BoxConstraints(minWidth: 80),
                          ),
                          backgroundColor: mainColor,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        RawChip(
                          label: Container(
                            child: Text(
                              'T-Shirts',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                            constraints: BoxConstraints(minWidth: 80),
                          ),
                          backgroundColor: mainColor,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        RawChip(
                          label: Container(
                            child: Text(
                              'Shirts',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                            constraints: BoxConstraints(minWidth: 80),
                          ),
                          backgroundColor: mainColor,
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        RawChip(
                          label: Container(
                            child: Text(
                              'Shirts',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(color: Colors.white),
                              textAlign: TextAlign.center,
                            ),
                            constraints: BoxConstraints(minWidth: 80),
                          ),
                          backgroundColor: mainColor,
                        ),
                      ],
                    ),
                  ),
                ),
                SortFilterWidget()
              ],
            ),
          ),
          preferredSize: Size.fromHeight(96),
        ),
      ),
      body: ListView.separated(
          padding: const EdgeInsets.all(16),
          itemBuilder: (context, index) => ProductCatalogWidget(),
          separatorBuilder: (context, _) => const Divider(
                height: 28,
                color: Colors.transparent,
              ),
          itemCount: 12),
    );
  }
}
