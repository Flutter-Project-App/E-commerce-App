import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/gen/assets.gen.dart';
import 'package:flutter_application/theme/constants.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

const Color _kKeyUmbraOpacity = Color(0x24000000); //
const Color _kKeyPenumbraOpacity = Color(0x1F000000); // alpha = 0.14
const Color _kAmbientShadowOpacity = Color(0x1F000000); // alpha = 0.12

class ProductWidget extends StatefulWidget {

  @override
  _ProductWidgetState createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  bool isLiked = false;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      child: Container(
        width: 160,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Stack(
              clipBehavior: Clip.none,
              children: <Widget>[
                ClipRRect(
                  child: AspectRatio(
                    aspectRatio: 0.8,
                    child: Container(
                      child: Image.asset(
                        Assets.icons.demoProduct1.path,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  borderRadius: BorderRadius.all(const Radius.circular(8)),
                ),
                Positioned(
                  child: Container(
                    width: 36,
                    height: 36,
                    decoration: const ShapeDecoration(
                        color: Colors.white,
                        shadows: <BoxShadow>[
                          BoxShadow(offset: Offset(0, 1), blurRadius: 1.0, spreadRadius: -1, color: _kKeyUmbraOpacity),
                          BoxShadow(offset: Offset(0, 4), blurRadius: 4.0, spreadRadius: 0, color: _kKeyPenumbraOpacity),
                          BoxShadow(offset: Offset(0, 6), blurRadius: 6.0, spreadRadius: 0, color: _kAmbientShadowOpacity),
                        ],
                        shape: CircleBorder()
                    ),
                    child: IconButton(
                      icon: isLiked ? const Icon(
                        Icons.favorite_border,
                        color: secondaryColor,
                        size: 20,
                      ) : const Icon(
                        Icons.favorite,
                        color: redMainColor, size: 20,),
                      onPressed: () {
                        setState(() {
                          isLiked = !isLiked;
                        });
                      },
                    ),
                  ),
                  bottom: -24,
                  right: 0,
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Row(
                children: <Widget>[
                  RatingBar.builder(
                      initialRating: 3,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemSize: 16,
                      itemCount: 5,
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                        size: 16,
                      ),
                      onRatingUpdate: (rating) {
                        print(rating);
                      }),
                  Text('(12)', style: Theme.of(context).textTheme.caption!.copyWith(fontWeight: FontWeight.w300),)
                ],
              ),
            ),
            Text('Dorothy Perkins', style: Theme.of(context).textTheme.caption!.copyWith(
                color: Theme.of(context).hintColor
            ),),
            Text('Evening Dress', style: Theme.of(context).textTheme.caption,),
            Padding(padding: const EdgeInsets.symmetric(vertical: 4),
              child: Row(
                children: <Widget>[
                  Text('15\$', style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: Theme.of(context).hintColor,
                      fontWeight: FontWeight.w500,
                      decoration: TextDecoration.lineThrough
                  ),),
                  const SizedBox(width: 8,),
                  Text('10\$', style: Theme.of(context).textTheme.subtitle1!.copyWith(
                      color: redMainColor,
                      fontWeight: FontWeight.w500
                  ),)
                ],
              ),)
          ],
        ),
      ),
    );
  }
}
