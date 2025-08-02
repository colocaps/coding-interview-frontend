import 'package:exchange_caclculator/design_system/theme/EFColors.dart';
import 'package:flutter/material.dart';

class EFRoundedButton extends StatelessWidget {
  final void Function()? onTap;

  const EFRoundedButton({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 70,
        height: 70,
        decoration: BoxDecoration(
          color: EFColors.secondary,
          shape: BoxShape.circle,
        ),
        child: Center(
          child: Stack(
            alignment: Alignment.center,
            children: const [
              Positioned(
                top: 10,
                right: 15,
                child: Icon(Icons.arrow_back, color: Colors.white, size: 30),
              ),
              Positioned(
                bottom: 10,
                left: 15,
                child: Icon(Icons.arrow_forward, color: Colors.white, size: 30),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
