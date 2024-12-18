import 'package:final_task/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatefulWidget {
  const CustomTextFormField({
    super.key,
    required this.hint,
    this.controller,
    this.keyboardType,
    this.onChanged,
    this.minLines,
    this.isPassword = false,
  });
  final String hint;
  final int? minLines;
  final bool isPassword;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final void Function(String)? onChanged;

  @override
  State<CustomTextFormField> createState() => _CustomTextFormFieldState();
}

class _CustomTextFormFieldState extends State<CustomTextFormField> {
  bool isHidden = true;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      onChanged: widget.onChanged ?? (value) {},
      onTapOutside: (event) {
        FocusManager.instance.primaryFocus?.unfocus();
      },
      validator: (value) {
        if (value!.isEmpty ?? true) {
          return 'This field can\'t be empty';
        }
        if (value.length < 8 && widget.isPassword) {
          return 'Password must be at least 8 characters';
        }
        return null;
      },
      minLines: widget.minLines,
      maxLines: widget.isPassword ? 1 : widget.minLines,
      keyboardType: widget.keyboardType ?? TextInputType.text,
      obscureText: widget.isPassword ? isHidden : false,
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.symmetric(horizontal: 20),
          hintText: widget.hint,
          suffixIcon: widget.isPassword
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      isHidden = !isHidden;
                    });
                  },
                  icon:
                      Icon(isHidden ? Icons.visibility : Icons.visibility_off),
                )
              : null,
          hintStyle: AppStyles.styleRegularInter15(context),
          filled: true,
          fillColor: const Color(0xffF5F5F5),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(7),
            borderSide: BorderSide.none,
          )),
    );
  }
}
