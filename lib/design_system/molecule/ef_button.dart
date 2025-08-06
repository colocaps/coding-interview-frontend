import 'package:exchange_caclculator/design_system/atom/ef_text.dart';
import 'package:flutter/material.dart';

class EFButton extends StatefulWidget {
  const EFButton({
    required this.onPressed,
    required this.title,
    super.key,
    this.isLoading = false,
    this.textColor = Colors.white,
    this.buttonColor,
    this.isEnabled = true,
  });

  final VoidCallback onPressed;
  final String title;
  final bool isLoading;
  final Color? textColor;
  final Color? buttonColor;
  final bool isEnabled;

  @override
  ButtonState createState() => ButtonState();
}

class ButtonState extends State<EFButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 20),
      child: ElevatedButton(
        onPressed: widget.onPressed,
        child: body(),
      ),
    );
  }

  Widget body() {
    if (widget.isLoading == false) {
      return Center(
        child: EFText(
          color: widget.textColor,
          text: widget.title,
        ),
      );
    } else {
      return Stack(
        children: [
          Opacity(
            opacity: widget.isLoading ? 0 : 1,
            child: Center(
              child: EFText(
                color: widget.textColor,
                text: widget.title,
              ),
            ),
          ),
          if (widget.isLoading)
            const Positioned(
              left: 0,
              right: 0,
              top: 0,
              bottom: 0,
              child: Center(
                child: CircularProgressIndicator(),
              ),
            )
          else
            const SizedBox(),
        ],
      );
    }
  }
}
