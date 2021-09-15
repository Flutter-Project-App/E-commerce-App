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
                      onPressed: () {},
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
