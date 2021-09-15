import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class MyCustomTextFormField extends FormField<String> {
  MyCustomTextFormField({
    TextEditingController? controller,
    Key? key,
    String? initialValue,
    String? hintText,
    FormFieldSetter<String>? onSaved,
    FormFieldValidator<String>? validator,
    bool autoValidate = false,
    bool enabled = true,
    bool selected = false,
    Widget? suffix,
    Widget? icon,
    Widget? prefix,
    AutovalidateMode? autovalidateMode,
    bool obscureText = true,
    bool isPassword = false,
    TextInputType? inputType,
    List<TextInputFormatter>? inputFormatters,
    int? maxLength,
    FocusNode? focusNode,
    onTap,
    bool myAutoValidate = false,
    bool filled = false,
    ValueChanged<String>? onChanged,
  }) : super(
            key: key,
            validator: validator,
            onSaved: onSaved,
            initialValue: initialValue,
            autovalidateMode: myAutoValidate
                ? AutovalidateMode.onUserInteraction
                : AutovalidateMode.disabled,
            builder: (FormFieldState state) {
              return TextField(
                controller: controller,
                cursorColor: Colors.black,
                onSubmitted: (string) {
                  // if (focusNode!=null){
                  //   FocusScope.of(state.context).requestFocus(focusNode);
                  // }
                  FocusScope.of(state.context).unfocus();
                },
                obscureText: isPassword ? obscureText : false,
                style: filled
                    ? Theme.of(state.context).textTheme.subtitle1!.copyWith(
                        fontWeight: FontWeight.w400, color: Colors.white)
                    : Theme.of(state.context)
                        .textTheme
                        .subtitle1!
                        .copyWith(fontWeight: FontWeight.w400),
                keyboardType: inputType,
                inputFormatters: inputFormatters,
                maxLength: maxLength,
                onChanged: (text) {
                  state.didChange(text);
                  if (onChanged != null) {
                    onChanged(text);
                  }
                },
                decoration: InputDecoration()
                    .applyDefaults(Theme.of(state.context).inputDecorationTheme)
                    .copyWith(
                      // filled: filled,
                      fillColor: filled ? Color(0xff761113) : Colors.white,
                      hintStyle: filled
                          ? Theme.of(state.context)
                              .textTheme
                              .subtitle1!
                              .copyWith(
                                  fontWeight: FontWeight.normal,
                                  color: Color(0xffa7b4bf))
                          : Theme.of(state.context)
                              .textTheme
                              .subtitle1!
                              .copyWith(
                                  fontWeight: FontWeight.normal,
                                  color: Color(0xffa7b4bf)),
                      errorStyle: filled
                          ? TextStyle(color: Colors.white, fontSize: 12)
                          : TextStyle(color: Colors.red, fontSize: 12),
                      enabledBorder: filled
                          ? OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                  color: Color(0xff761113), width: 1),
                            )
                          : OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                  color: Color(0xffffffff), width: 1),
                            ),

                      hintText: hintText ?? '',
                      suffixIcon: isPassword
                          ? InkResponse(
                              child: Icon(
                                  obscureText
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: Color(0xff676973)),
                              onTap: () {
                                // ignore: invalid_use_of_protected_member
                                state.setState(() {
                                  obscureText = !obscureText;
                                });
                                if (onTap != null) {
                                  onTap(obscureText);
                                }
                              },
                            )
                          : null,
                      errorText: state.errorText,
                      enabled: enabled,
                    ),
              );
            });
}
