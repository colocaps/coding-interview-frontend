import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'exchange_event.dart';
part 'exchange_state.dart';

part 'exchange_bloc.freezed.dart';

class ExchangeBloc extends Bloc<ExchangeEvent, ExchangeState> {
  ExchangeBloc() : super(ExchangeState()) {
    on<ExchangeEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
