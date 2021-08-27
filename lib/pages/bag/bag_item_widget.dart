import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BagItemWidget extends StatelessWidget {
  final String assets;
  BagItemWidget(this.assets);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        child: IntrinsicHeight(
          child: Row(
            children: <Widget>[
              AspectRatio(
                aspectRatio: 1.25,
                child: Container(
                  width: 104,
                  child: Image.asset(
                    assets,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      Expanded(
                          child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Pullover',
                            style: Theme.of(context).textTheme.headline6,
                          ),
                          Row(
                            children: <Widget>[
                              Text(
                                'Color: Black',
                                style: Theme.of(context).textTheme.caption,
                              ),
                              const SizedBox(
                                width: 13,
                              ),
                              Text(
                                'Size: L',
                                style: Theme.of(context).textTheme.caption,
                              ),
                            ],
                          )
                        ],
                      )),
                      IconButton(onPressed: () {}, icon: Icon(Icons.more_vert, color: Theme.of(context).hintColor,))
                    ],
                  ),
                  Container(
                    child: Row(
                      children: <Widget>[
                        Container(
                          width: 32,
                          height: 32,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              boxShadow: kElevationToShadow[1]),
                          child: InkWell(
                            onTap: () {
                              print('remove');
                            },
                            child: const Icon(
                              Icons.remove,
                              size: 16,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.center,
                          width: 32,
                          height: 32,
                          child: Text(
                            '1',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .copyWith(fontWeight: FontWeight.w900),
                          ),
                        ),
                        Container(
                          width: 32,
                          height: 32,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white,
                              boxShadow: kElevationToShadow[1]),
                          child: InkWell(
                            onTap: () {
                              print('add');
                            },
                            child: const Icon(
                              Icons.add,
                              size: 16,
                            ),
                          ),
                        ),
                        Expanded(
                            child: Text(
                          '43\$',
                          textAlign: TextAlign.right,
                          style: Theme.of(context)
                              .textTheme
                              .subtitle2!
                              .copyWith(fontWeight: FontWeight.w900),
                        ))
                      ],
                    ),
                    padding: const EdgeInsets.symmetric(vertical: 12)
                        .copyWith(right: 16),
                  )
                ],
              ))
            ],
          ),
        ),
      ),
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8))),
      clipBehavior: Clip.hardEdge,
    );
  }
}
