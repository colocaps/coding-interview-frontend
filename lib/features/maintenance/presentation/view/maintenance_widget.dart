import 'package:exchange_caclculator/di/injection.dart';
import 'package:exchange_caclculator/features/maintenance/domain/repository/maintenance_repository.dart';
import 'package:exchange_caclculator/features/maintenance/presentation/bloc/maintenance_bloc.dart';
import 'package:exchange_caclculator/features/maintenance/presentation/view/maintenance_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MaintenanceWidget extends StatelessWidget {
  const MaintenanceWidget({required this.child, super.key});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => MaintenanceBloc(
        repository: getIt<MaintenanceRepository>(),
      )..add(MaintenanceStarted()),
      child: BlocBuilder<MaintenanceBloc, MaintenanceState>(
        builder: (context, state) {
          if (state.status == MaintenanceStatus.active) {
            return const MaintenancePage();
          }
          return child;
        },
      ),
    );
  }
}
