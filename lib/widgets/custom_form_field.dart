import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_application/theme/constants.dart';

class CustomTextFormField extends FormField<String> {
  CustomTextFormField({
    TextEditingController? controller,
    Key? key,
    String? initialValue,
    String? hintText,
    String labelText = "",
    FormFieldSetter<String>? onSaved,
    FormFieldValidator<String>? validator,
    bool enabled = true,
    bool obscureText = true,
    bool isPassword = false,
    TextInputType? inputType,
    List<TextInputFormatter>? inputFormatters,
    int? maxLength,
    onTap,
  }) : super(
            key: key,
            validator: validator,
            onSaved: onSaved,
            initialValue: initialValue,
            builder: (FormFieldState state) {
              return TextField(
                controller: controller,
                obscureText: isPassword ? obscureText : false,
                cursorColor: mainColor,
                style: const TextStyle(fontWeight: FontWeight.bold),
                keyboardType: inputType,
                inputFormatters: inputFormatters,
                maxLength: maxLength,
                onChanged: (text) {
                  state.didChange(text);
                },
                decoration: InputDecoration(
                    enabledBorder: InputBorder.none,
                    labelStyle:
                        const TextStyle(color: secondaryColor, fontSize: 11),
                    labelText: labelText),
              );
            });
}
