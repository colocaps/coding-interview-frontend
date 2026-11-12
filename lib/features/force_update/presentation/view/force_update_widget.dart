import 'package:exchange_caclculator/di/injection.dart';
import 'package:exchange_caclculator/features/force_update/domain/repository/force_update_repository.dart';
import 'package:exchange_caclculator/features/force_update/presentation/bloc/force_update_bloc.dart';
import 'package:exchange_caclculator/features/force_update/presentation/view/force_update_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class ForceUpdateWidget extends StatelessWidget {
  const ForceUpdateWidget({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => ForceUpdateBloc(
        repository: getIt<ForceUpdateRepository>(),
      )..add(ForceUpdateStarted()),
      child: BlocBuilder<ForceUpdateBloc, ForceUpdateState>(
        builder: (context, state) {
          if (state.status == ForceUpdateStatus.active) {
            return const ForceUpdatePage();
          }
          return child;
        },
      ),
    );
  }
}
