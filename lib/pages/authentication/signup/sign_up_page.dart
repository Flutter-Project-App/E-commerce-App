import 'package:flutter/material.dart';
import 'package:flutter_application/gen/assets.gen.dart';
import 'package:flutter_application/pages/authentication/signin/sign_in_page.dart';
import 'package:flutter_application/theme/constants.dart';
import 'package:flutter_application/widgets/custom_form_field.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({Key? key}) : super(key: key);

  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final _formKey = GlobalKey<FormState>();

  late TextEditingController _name;
  late TextEditingController _email;
  late TextEditingController _password;

  @override
  void initState() {
    super.initState();
    _name = TextEditingController();
    _email = TextEditingController();
    _password = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    _name.dispose();
    _email.dispose();
    _password.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                                'Sign up',
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
                                  Container(
                                    child: CustomTextFormField(
                                      controller: _name,
                                      labelText: 'Name',
                                    ),
                                    padding: const EdgeInsets.only(
                                        left: 20, right: 20),
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8))),
                                  ),
                                  const SizedBox(
                                    height: 8,
                                  ),
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
                                  const SizedBox(
                                    height: 8,
                                  ),
                                  Container(
                                    child: CustomTextFormField(
                                      controller: _password,
                                      isPassword: true,
                                      labelText: 'Password',
                                    ),
                                    padding: const EdgeInsets.only(
                                        left: 20, right: 20),
                                    decoration: const BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(8))),
                                  )
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 16,
                            ),
                            InkWell(
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    const Text(
                                      'Already have an account?',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Image.asset(Assets.icons.arrowRight.path)
                                  ],
                                ),
                              ),
                              onTap: () => Navigator.of(context).push(MaterialPageRoute(builder: (context) => const SignInPage())),
                            ),
                            const SizedBox(
                              height: 28,
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
                                      'SIGN UP',
                                      style: TextStyle(
                                          fontWeight: FontWeight.w800),
                                    ))),
                            const Spacer(),
                            Column(
                              children: [
                                const Text(
                                  'Or sign up with social account',
                                  style: TextStyle(fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(
                                  height: 12,
                                ),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    InkWell(
                                        onTap: () {
                                          print('google');
                                        },
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(24)),
                                        child: Ink(
                                          // color: Colors.white,
                                          width: 92,
                                          height: 64,
                                          padding: const EdgeInsets.all(20),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(24)),
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.1),
                                                    offset: const Offset(0, 2),
                                                    blurRadius: 6)
                                              ]),
                                          child: SvgPicture.asset(
                                              Assets.icons.google),
                                        )),
                                    const SizedBox(
                                      width: 16,
                                    ),
                                    InkWell(
                                        onTap: () {
                                          print('facebook');
                                        },
                                        borderRadius: const BorderRadius.all(
                                            Radius.circular(24)),
                                        child: Ink(
                                          // color: Colors.white,
                                          width: 92,
                                          height: 64,
                                          padding: const EdgeInsets.all(20),
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  const BorderRadius.all(
                                                      Radius.circular(24)),
                                              color: Colors.white,
                                              boxShadow: [
                                                BoxShadow(
                                                    color: Colors.grey
                                                        .withOpacity(0.1),
                                                    offset: const Offset(0, 2),
                                                    blurRadius: 6)
                                              ]),
                                          child: SvgPicture.asset(
                                              Assets.icons.facebook),
                                        )),
                                  ],
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 48,
                            )
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
