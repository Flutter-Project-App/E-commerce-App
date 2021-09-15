import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/gen/assets.gen.dart';
import 'package:flutter_application/theme/constants.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
          physics: ClampingScrollPhysics(),
          slivers: <Widget>[
            // SliverPersistentHeader(delegate: S),
            SliverToBoxAdapter(
              child: Container(
                padding: EdgeInsets.only(
                  left: 14,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('My profile',
                        style: Theme.of(context).textTheme.headline1),
                    SizedBox(
                      height: 24,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          radius: 32,
                          child: SvgPicture.asset(
                            Assets.icons.icProfileInactive,
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Matilda Brown',
                                style: Theme.of(context).textTheme.headline5),
                            Text('matildabrown@mail.com',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText1!
                                    .copyWith(
                                        color: secondaryColor,
                                        fontWeight: FontWeight.w500)),
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SliverList(
                delegate: SliverChildListDelegate([
              ListTile(
                title: Text('My orders'),
                subtitle: Text('Already have 12 orders',
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: secondaryColor, fontWeight: FontWeight.w500)),
                trailing: Icon(Icons.navigate_next),
                onTap: () {
                  // Navigator.of(context).push(route)
                },
              ),
              ListTile(
                title: Text('Shipping addresses'),
                subtitle: Text('3 ddresses',
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: secondaryColor, fontWeight: FontWeight.w500)),
                trailing: Icon(Icons.navigate_next),
                onTap: () {
                  // Navigator.of(context).push(route)
                },
              ),
              ListTile(
                title: Text('Payment methods'),
                subtitle: Text('You have special promocodes',
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: secondaryColor, fontWeight: FontWeight.w500)),
                trailing: Icon(Icons.navigate_next),
                onTap: () {
                  // Navigator.of(context).push(route)
                },
              ),
              ListTile(
                title: Text('Promocodes'),
                subtitle: Text('Already have 12 orders',
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: secondaryColor, fontWeight: FontWeight.w500)),
                trailing: Icon(Icons.navigate_next),
                onTap: () {
                  // Navigator.of(context).push(route)
                },
              ),
              ListTile(
                title: Text('My reviews'),
                subtitle: Text('Reviews for 4 items',
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: secondaryColor, fontWeight: FontWeight.w500)),
                trailing: Icon(Icons.navigate_next),
                onTap: () {
                  // Navigator.of(context).push(route)
                },
              ),
              ListTile(
                title: Text('Settings'),
                subtitle: Text('Notifications, password',
                    style: Theme.of(context).textTheme.bodyText1!.copyWith(
                        color: secondaryColor, fontWeight: FontWeight.w500)),
                trailing: Icon(Icons.navigate_next),
                onTap: () {
                  // Navigator.of(context).push(route)
                },
              ),
            ]))
          ],
        ));
  }
}
