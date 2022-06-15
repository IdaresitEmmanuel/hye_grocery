import 'package:flutter/material.dart';
import 'package:hye_grocery/presentation/core/theme/colors.dart';
import 'package:hye_grocery/presentation/core/theme/dimensions.dart';

class EditUserField extends StatelessWidget {
  const EditUserField({
    Key? key,
    this.controller,
    this.prefixIcon,
    this.label,
    this.keyboardType,
    this.enable = true,
    this.initialValue,
    this.onChanged,
    this.validator,
  }) : super(key: key);
  final TextEditingController? controller;
  final IconData? prefixIcon;
  final String? label;
  final TextInputType? keyboardType;
  final bool enable;
  final String? initialValue;
  final void Function(String)? onChanged;
  final String? Function(String?)? validator;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: HDimensions.pageMargin),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          prefixIcon != null
              ? Icon(prefixIcon!,
                  color:
                      enable ? Theme.of(context).iconTheme.color : Colors.grey)
              : const SizedBox.shrink(),
          Expanded(
            child: TextFormField(
              initialValue: initialValue,
              style: TextStyle(color: enable ? Colors.black : Colors.grey),
              keyboardType: keyboardType,
              onChanged: onChanged,
              validator: validator,
              cursorColor: HColors.accentColor,
              decoration: InputDecoration(
                isDense: true,
                contentPadding: const EdgeInsets.symmetric(
                    horizontal: 10.0, vertical: 10.0),
                border: const UnderlineInputBorder(),
                labelText: label ?? "",
                hintText: label,
                enabled: enable,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
