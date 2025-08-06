import 'package:exchange_caclculator/design_system/theme/EFColors.dart';
import 'package:flutter/material.dart';

class EFRoundedButton extends StatelessWidget {
  const EFRoundedButton({super.key, this.onTap});
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 70,
        height: 70,
        decoration: const BoxDecoration(
          color: EFColors.secondary,
          shape: BoxShape.circle,
        ),
        child: const Center(
          child: Stack(
            alignment: Alignment.center,
            children: [
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
