import 'package:auto_size_text/auto_size_text.dart';
import 'package:exchange_caclculator/gen/fonts.gen.dart';
import 'package:flutter/material.dart';

class EFText extends StatefulWidget {
  const EFText({
    required this.text,
    this.style,
    super.key,
    this.color,
    this.maxLines,
    this.textAlign = TextAlign.left,
    this.maxFontSize = double.infinity,
    this.minFontsize = 2,
  });

  final String text;
  final Color? color;
  final TextStyle? style;
  final int? maxLines;
  final TextAlign? textAlign;
  final double maxFontSize;
  final double minFontsize;

  @override
  EFTextState createState() => EFTextState();

  String get labelText => text;
}

class EFTextState extends State<EFText> {
  late TextStyle labelTheme;

  @override
  Widget build(BuildContext context) {
    return AutoSizeText.rich(
      TextSpan(text: widget.text),
      minFontSize: widget.minFontsize,
      maxFontSize: widget.maxFontSize,
      maxLines: widget.maxLines ?? 1,
      textAlign: widget.textAlign,
      overflow: TextOverflow.ellipsis,
      style: widget.style?.copyWith(
        color: widget.color ?? Colors.black,
        fontFamily: FontFamily.poppins,
      ),
    );
  }
}
