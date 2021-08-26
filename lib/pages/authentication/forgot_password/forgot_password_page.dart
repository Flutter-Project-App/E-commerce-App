import 'package:flutter/material.dart';
import 'package:flutter_application/gen/assets.gen.dart';
import 'package:flutter_application/theme/constants.dart';
import 'package:flutter_application/widgets/custom_form_field.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ForgotPasswordPage extends StatefulWidget {
  const ForgotPasswordPage({Key? key}) : super(key: key);

  @override
  _ForgotPasswordPageState createState() => _ForgotPasswordPageState();
}

class _ForgotPasswordPageState extends State<ForgotPasswordPage> {
  final _formKey = GlobalKey<FormState>();

  late TextEditingController _email;

  @override
  void initState() {
    super.initState();
    _email = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _email.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(

      ),
      body: SafeArea(
        child: LayoutBuilder(
          builder: (BuildContext context, BoxConstraints constraints) {
            return Form(
                key: _formKey,
                child: Container(
                  height: double.infinity,
                  padding: const EdgeInsets.only(left: 14, right: 14),
                  child: SingleChildScrollView(
                    child: ConstrainedBox(
                      constraints:
                      BoxConstraints(minHeight: constraints.maxHeight),
                      child: IntrinsicHeight(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            const Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                'Forgot password',
                                style: TextStyle(
                                    fontSize: 34, fontWeight: FontWeight.bold),
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 10,
                            ),
                            Container(
                              padding: const EdgeInsets.fromLTRB(2, 0, 2, 0),
                              child: Column(
                                mainAxisAlignment:
                                MainAxisAlignment.spaceBetween,
                                children: [
                                  const Text('Please, enter your email address. You will receive a link to create a new password via email.',
                                    style: TextStyle(fontWeight: FontWeight.bold),),
                                  const SizedBox(height: 16,),
                                  Container(
                                    child: CustomTextFormField(
                                      controller: _email,
                                      labelText: 'Email',
                                    ),
                                    padding: const EdgeInsets.only(
                                        left: 20, right: 20),
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8))),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 55,
                            ),
                            Container(
                                width: double.infinity,
                                padding:
                                const EdgeInsets.only(left: 2, right: 2),
                                height: 48,
                                decoration: const BoxDecoration(
                                    color: redMainColor,
                                    borderRadius:
                                    BorderRadius.all(Radius.circular(25))),
                                child: TextButton(
                                    onPressed: () {
                                      print(1);
                                    },
                                    child: const Text(
                                      'SEND',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w800),
                                    ))),
                          ],
                        ),
                      ),
                    ),
                  ),
                ));
          },
        ),
      ),
    );
  }
}
