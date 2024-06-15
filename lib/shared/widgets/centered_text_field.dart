import 'package:deptech_zaki/app/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CenteredTextField extends ConsumerStatefulWidget {
  const CenteredTextField({
    Key? key,
    required this.onChanged,
    required this.hint,
    this.keyboardType = TextInputType.text,
    this.isObscure = false,
    this.isPassword = false,
    this.value,
  }) : super(key: key);

  final ValueChanged<String> onChanged;
  final TextInputType? keyboardType;
  final bool isObscure;
  final bool isPassword;
  final String? hint;
  final String? value;

  @override
  ConsumerState<ConsumerStatefulWidget> createState() =>
      _CenteredTextFieldState();
}

class _CenteredTextFieldState extends ConsumerState<CenteredTextField> {
  bool isFocused = false;
  String _value = '';

  bool _obscureText = false; // Tambahkan variabel baru untuk status obscure

  @override
  void initState() {
    if (widget.value != null) {
      _value = widget.value!;
    }
    _obscureText = widget.isObscure; // Set status obscure saat initState

    super.initState();
  }

  void _handleChange(String value) {
    setState(() {
      _value = value;
    });

    widget.onChanged(value);
  }

  void _toggleObscure() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = ref.read(themeProvider);
    return TextFormField(
      obscureText:
          widget.isPassword == false ? widget.isPassword : _obscureText,
      keyboardType: widget.keyboardType,
      initialValue: _value,
      onChanged: _handleChange,
      decoration: InputDecoration(
        hintText: widget.hint,
        hintStyle: theme.typographyRegular.bodySmall,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(5.0),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            width: 2,
            color: Colors.indigo,
          ),
          borderRadius: BorderRadius.circular(10.0),
        ),
        suffixIcon: widget.isPassword == true
            ? IconButton(
                icon: Icon(
                  _obscureText ? Icons.visibility : Icons.visibility_off,
                  color: theme.green, // Sesuaikan dengan warna tema Anda
                ),
                onPressed: _toggleObscure,
              )
            : null,
      ),
      textAlign: TextAlign.center,
    );
  }
}
