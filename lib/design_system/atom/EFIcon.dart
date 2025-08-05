import 'package:exchange_caclculator/gen/assets.gen.dart';
import 'package:flutter/material.dart';

class EFIcon extends StatelessWidget {
  const EFIcon({super.key, this.currencyImage});

  final Currency? currencyImage;

  @override
  Widget build(BuildContext context) {
    return currencyImage?.icon() ?? SizedBox(width: 30);
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

  static Currency? fromString(String value) {
    try {
      return Currency.values.firstWhere(
        (currency) => currency.label.toLowerCase() == value.toLowerCase(),
      );
    } catch (e) {
      return null;
    }
  }

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

  Widget icon({double size = 30}) => asset.image(width: size, height: size);
}
