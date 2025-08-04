import 'package:exchange_caclculator/di/injection.dart';
import 'package:exchange_caclculator/features/exchange/domain/usecase/get_crypto_currencies.dart';
import 'package:exchange_caclculator/features/exchange/domain/usecase/get_exchange_usecase.dart';
import 'package:exchange_caclculator/features/exchange/domain/usecase/get_fiat_currencies_usecase.dart';
import 'package:exchange_caclculator/features/exchange/presentation/bloc/exchange_bloc.dart';
import 'package:exchange_caclculator/features/exchange/presentation/view/exchange_calculator_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ExchangeCalculatorScreen extends StatelessWidget {
  const ExchangeCalculatorScreen({super.key});

  static const routePath = '/exchange-calculator-screen';
  static const routeName = 'exchange-calculator-screen';

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ExchangeBloc(
        getCryptoCurrenciesUsecase: getIt<GetCryptoCurrenciesUsecase>(),
        getExchangeUsecase: getIt<GetExchangeUsecase>(),
        getFiatCurrenciesUsecase: getIt<GetFiatCurrenciesUsecase>(),
      ),
      child: BlocListener<ExchangeBloc, ExchangeState>(
        listener: (context, state) {
          // TODO: implement listener
        },
        child: ExchangeCalculatorPage(),
      ),
    );
  }
}
