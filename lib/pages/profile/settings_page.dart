import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application/theme/constants.dart';
import 'package:flutter_application/widgets/custom_form_field.dart';

class SettingsPage extends StatefulWidget {
  static const ROUTE_NAME = "SettingsPage";

  @override
  _SettingsPageState createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  static const ROUTE_NAME = "SettingsPage";

  var fullnameController = TextEditingController();
  var dateController = TextEditingController();
  var passwordController = TextEditingController();
  var oldPasswordController = TextEditingController();
  var newPasswordController = TextEditingController();
  var reNewPasswordController = TextEditingController();

  bool _switchValue1 = true;
  bool _switchValue2 = true;
  bool _switchValue3 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        leading: BackButton(),
        actions: [
          IconButton(icon: Icon(Icons.search), onPressed: () {}),
        ],
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Settings', style: Theme.of(context).textTheme.headline1),
              const SizedBox(
                height: 23,
              ),
              Text('Personal Information',
                  style: Theme.of(context).textTheme.bodyText2),
              const SizedBox(
                height: 21,
              ),
              Container(
                height: 64,
                child: CustomTextFormField(
                  controller: fullnameController,
                  labelText: 'Full name',
                ),
                padding: const EdgeInsets.only(left: 20, right: 20, top: 6),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(8))),
              ),
              const SizedBox(
                height: 24,
              ),
              Container(
                height: 64,
                child: CustomTextFormField(
                  controller: dateController,
                  labelText: 'Date of Birth',
                ),
                padding: const EdgeInsets.only(left: 20, right: 20, top: 6),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(8))),
              ),
              const SizedBox(
                height: 45,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Password',
                      style: Theme.of(context).textTheme.bodyText2),
                  TextButton(
                      onPressed: () {
                        showModalBottomSheet(
                            context: context,
                            builder: (context) {
                              return Container(
                                height: 450,
                                padding: EdgeInsets.symmetric(
                                    vertical: 36, horizontal: 16),
                                child: SingleChildScrollView(
                                  child: Column(
                                    children: [
                                      Text('Password Change',
                                          style: Theme.of(context)
                                              .textTheme
                                              .headline5),
                                      const SizedBox(
                                        height: 18,
                                      ),
                                      Container(
                                        height: 64,
                                        child: CustomTextFormField(
                                          controller: oldPasswordController,
                                          isPassword: true,
                                          labelText: 'Old Password',
                                        ),
                                        padding: const EdgeInsets.only(
                                            left: 20, right: 20, top: 6),
                                        decoration: const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(8))),
                                      ),
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          TextButton(
                                              onPressed: () {},
                                              child: Text('Forgot Password?',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodyText1!
                                                      .copyWith(
                                                          color: secondaryColor,
                                                          fontWeight:
                                                              FontWeight.w500))),
                                        ],
                                      ),
                                      Container(
                                        height: 64,
                                        child: CustomTextFormField(
                                          controller: newPasswordController,
                                          isPassword: true,
                                          labelText: 'New Password',
                                        ),
                                        padding: const EdgeInsets.only(
                                            left: 20, right: 20, top: 6),
                                        decoration: const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(8))),
                                      ),
                                      const SizedBox(
                                        height: 24,
                                      ),
                                      Container(
                                        height: 64,
                                        child: CustomTextFormField(
                                          controller: reNewPasswordController,
                                          isPassword: true,
                                          labelText: 'Repeat New Password',
                                        ),
                                        padding: const EdgeInsets.only(
                                            left: 20, right: 20, top: 6),
                                        decoration: const BoxDecoration(
                                            color: Colors.white,
                                            borderRadius: BorderRadius.all(
                                                Radius.circular(8))),
                                      ),
                                      const SizedBox(
                                        height: 32,
                                      ),
                                      Container(
                                          width: double.infinity,
                                          padding: const EdgeInsets.only(
                                              left: 2, right: 2),
                                          height: 48,
                                          decoration: const BoxDecoration(
                                              color: redMainColor,
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(25))),
                                          child: TextButton(
                                              onPressed: () {
                                                print(1);
                                                Navigator.pop(context);
                                              },
                                              child: Text(
                                                'SAVE PASSWORD',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .button,
                                              )))
                                    ],
                                  ),
                                ),
                              );
                            },
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(34))));
                      },
                      child: Text('Change',
                          style: Theme.of(context)
                              .textTheme
                              .bodyText1!
                              .copyWith(
                                  color: secondaryColor,
                                  fontWeight: FontWeight.w500)))
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              Container(
                height: 64,
                child: CustomTextFormField(
                  controller: passwordController,
                  labelText: 'Password',
                  isPassword: true,
                ),
                padding: const EdgeInsets.only(left: 20, right: 20, top: 6),
                decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.all(Radius.circular(8))),
              ),
              const SizedBox(
                height: 45,
              ),
              Text('Notifications',
                  style: Theme.of(context).textTheme.bodyText2),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Sales', style: Theme.of(context).textTheme.bodyText1),
                  Switch(
                      value: _switchValue1,
                      activeColor: Color(0xff2AA952),
                      activeTrackColor: Color(0xffF0F0F0),
                      inactiveTrackColor: Color(0xffF0F0F0),
                      onChanged: (value) {
                        setState(() {
                          _switchValue1 = value;
                        });
                      })
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('New arrivals',
                      style: Theme.of(context).textTheme.bodyText1),
                  Switch(
                      value: _switchValue2,
                      activeColor: Color(0xff2AA952),
                      activeTrackColor: Color(0xffF0F0F0),
                      inactiveTrackColor: Color(0xffF0F0F0),
                      onChanged: (value) {
                        setState(() {
                          _switchValue2 = value;
                        });
                      })
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('Delivery status changes',
                      style: Theme.of(context).textTheme.bodyText1),
                  Switch(
                      value: _switchValue3,
                      activeColor: Color(0xff2AA952),
                      activeTrackColor: Color(0xffF0F0F0),
                      inactiveTrackColor: Color(0xffF0F0F0),
                      onChanged: (value) {
                        setState(() {
                          _switchValue3 = value;
                        });
                      })
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
