import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class RegisterTextField extends StatelessWidget {
  final String baslik;
  final TextEditingController controller;
  final TextInputAction? textInputAction;
  final TextInputType? textInputType;
  final String hintText;
  final List<TextInputFormatter> formmatter;
  final Icon? suffixIcon;
  final int maxLines;
  final double baslikBoyutu;
  final Color? cursorColor;
  final bool enabled;
  final FocusNode? focusNode;
  const RegisterTextField(
      {super.key,
      // ignore: avoid_init_to_null
      this.suffixIcon = null,
      this.baslikBoyutu = 17,
      this.cursorColor,
      this.enabled = true,
      this.focusNode,
      required this.baslik,
      required this.controller,
      this.textInputAction,
      this.textInputType,
      this.formmatter = const [],
      this.hintText = '',
      this.maxLines = 1});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          '  $baslik',
          style: TextStyle(fontSize: baslikBoyutu, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 5,
        ),
        Card(
          color: Colors.white,
          elevation: .3,
          child: TextField(
            controller: controller,
            focusNode: focusNode ?? FocusNode(),
            enabled: enabled,
            cursorColor: cursorColor ?? Colors.grey,
            textInputAction: textInputAction ?? TextInputAction.next,
            keyboardType: textInputType ?? TextInputType.name,
            maxLines: maxLines,
            decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: const EdgeInsets.all(12),
                hintText: hintText,
                suffixIcon: suffixIcon),
          ),
        ),
      ],
    );
  }
}


//buton
class RegisterDevamEtBtn extends StatelessWidget {
  final Function function;
  final String btnAdi;
  final double width;
  final double height;
  final Color? color;
  final double size;
  const RegisterDevamEtBtn(
      {super.key,
      this.size = 12,
      required this.function,
      this.btnAdi = 'Devam Et',
      required this.width,
      this.height = 44,
      this.color});

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      minWidth: width,
      height: height,
      color: color ?? const Color(0xFF026AA6),
      onPressed: () {
        function();
      },
      child: Text(btnAdi,
          style: const TextStyle(color: Colors.white, fontSize: 16)),
    );
  }
}


