import 'package:flutter/material.dart';
import 'package:flutter_application/gen/assets.gen.dart';
import 'package:flutter_application/theme/constants.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProductCatalogWidget extends StatelessWidget {
  const ProductCatalogWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      // clipBehavior: ,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8))),
      child: Stack(
        children: [
          Container(
            height: 112,
            child: Row(
              children: [
                AspectRatio(
                  aspectRatio: 1,
                  child: Image.asset(
                    Assets.icons.demoProduct2.path,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Expanded(
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Text('LIME',
                        style: Theme.of(context).textTheme.bodyText1!.copyWith(
                            fontSize: 11, fontWeight: FontWeight.w500)),
                    Text('Shirt', style: Theme.of(context).textTheme.bodyText2),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text('Color: Blue',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(
                                    fontSize: 11, fontWeight: FontWeight.w500)),
                        const SizedBox(
                          width: 25,
                        ),
                        Text('Size: L',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText1!
                                .copyWith(
                                    fontSize: 11, fontWeight: FontWeight.w500)),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 4),
                      child: Row(
                        children: [
                          Text('10\$',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                      color: redMainColor,
                                      fontWeight: FontWeight.w500)),
                          const SizedBox(
                            width: 50,
                          ),
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
                          Text('(12)',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodyText1!
                                  .copyWith(
                                      color: secondaryColor,
                                      fontWeight: FontWeight.w500)),
                        ],
                      ),
                    ),
                  ],
                ))
              ],
            ),
          ),
          Positioned(
            child: IconButton(
              icon: Icon(
                Icons.close,
                color: secondaryColor,
              ),
              onPressed: () {},
            ),
            top: 0,
            right: 0,
          ),
          Positioned(
            child: CircleAvatar(
              radius: 18,
              backgroundColor: redMainColor,
              child: TextButton(
                child: SvgPicture.asset(Assets.icons.icBagActive, color: Colors.white,),
                onPressed: (){},
              ),
            ),
            bottom: 0,
            right: 0,
          ),
        ],
      ),
    );
  }
}
