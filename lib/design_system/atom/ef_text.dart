import 'package:auto_size_text/auto_size_text.dart';
import 'package:exchange_caclculator/gen/fonts.gen.dart';
import 'package:flutter/material.dart';

class EFText extends StatelessWidget {
  const EFText({
    required this.text,
    this.style,
    this.color,
    this.maxLines,
    this.textAlign = TextAlign.left,
    this.maxFontSize = double.infinity,
    this.minFontsize = 2,
    this.labelTheme,
    super.key,
  });

  final String text;
  final Color? color;
  final TextStyle? style;
  final int? maxLines;
  final TextAlign? textAlign;
  final double maxFontSize;
  final double minFontsize;
  final TextStyle? labelTheme;

  @override
  Widget build(BuildContext context) {
    return AutoSizeText.rich(
      TextSpan(text: text),
      minFontSize: minFontsize,
      maxFontSize: maxFontSize,
      maxLines: maxLines ?? 1,
      textAlign: textAlign,
      overflow: TextOverflow.ellipsis,
      style: Theme.of(context).textTheme.labelLarge?.copyWith(
                // fontSize: 10,
                color: color,
                fontFamily: FontFamily.poppins,
              ) ??
          style?.copyWith(
            color: color ?? Colors.black,
            fontFamily: FontFamily.poppins,
          ),
    );
  }
}
