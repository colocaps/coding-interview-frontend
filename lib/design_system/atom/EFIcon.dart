import 'package:exchange_caclculator/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class EFIcon extends StatelessWidget {
  const EFIcon({super.key, required this.currencyImage});

  final Currency currencyImage;

  @override
  Widget build(BuildContext context) {
    return currencyImage.icon();
  }
}

enum Currency {
  usdt('USDT'),
  brl('BRL'),
  cop('COP'),
  pen('PEN'),
  ves('VES');

  final String label;

  const Currency(this.label);

  AssetGenImage get asset {
    switch (this) {
      case Currency.usdt:
        return Assets.criptoCurrencies.teherUsdt;
      case Currency.brl:
        return Assets.fiatCurrencies.brl;
      case Currency.cop:
        return Assets.fiatCurrencies.cop;
      case Currency.pen:
        return Assets.fiatCurrencies.pen;
      case Currency.ves:
        return Assets.fiatCurrencies.ves;
    }
  }

  Widget icon({double size = 24}) => asset.image(width: size, height: size);
}
