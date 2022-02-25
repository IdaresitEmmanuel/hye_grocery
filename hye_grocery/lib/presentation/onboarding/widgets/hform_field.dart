import 'package:flutter/material.dart';

class HFormField extends StatelessWidget {
  const HFormField(
      {Key? key,
      this.obscureText = false,
      this.controller,
      this.validator,
      this.hintText,
      this.icon,
      this.onChanged})
      : super(key: key);
  final TextEditingController? controller;
  final bool obscureText;
  final String? Function(String?)? validator;
  final String? hintText;
  final IconData? icon;
  final void Function(String)? onChanged;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
      child: TextFormField(
        onChanged: onChanged,
        validator: validator,
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          isDense: true,
          contentPadding: const EdgeInsets.symmetric(horizontal: 0.0),
          border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(40.0)),
          filled: true,
          fillColor: Theme.of(context).cardColor,
          prefixIcon: Icon(
            icon,
            color: Theme.of(context).iconTheme.color,
            size: 26.0,
          ),
          hintText: hintText,
        ),
      ),
    );
  }
}
