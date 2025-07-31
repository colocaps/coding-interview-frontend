import 'package:exchange_caclculator/design_system/molecule/EFButton.dart';
import 'package:exchange_caclculator/design_system/molecule/EFEchange_Input.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  static const routePath = '/home-screen';
  static const routeName = 'home-screen';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          EFButton(onPressed: () {}, title: 'Cambiar'),
          EFExchangeInput(
            controller: TextEditingController(),
            currency: 'USDT',
          )
        ],
      ),
    );
  }
}
