import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    required this.text,
    super.key,
    this.textColor,
    this.onPressed,
  });

  final String text;
  final Color? textColor;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(5)),
        ),
        elevation: 3,
        backgroundColor: const Color(0xffd2d6e6),
        padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        maxLines: 1,
        softWrap: false,
        overflow: TextOverflow.ellipsis,
        style: TextStyle(
          fontSize: 16,
          color: textColor ?? Colors.indigo.shade900,
          fontWeight: FontWeight.w700,
        ),
      ),
    );
  }
}
