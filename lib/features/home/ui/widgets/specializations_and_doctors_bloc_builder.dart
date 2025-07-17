import 'package:doc_bridge/core/helper/spacing.dart';
import 'package:doc_bridge/core/theming/colors.dart';
import 'package:doc_bridge/features/home/logic/home_cubit.dart';
import 'package:doc_bridge/features/home/logic/home_state.dart';
import 'package:doc_bridge/features/home/ui/widgets/doc_list_view.dart';
import 'package:doc_bridge/features/home/ui/widgets/doc_speciality_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SetupSpecializationsAndDoctorsBlocBuilder extends StatelessWidget {
  const SetupSpecializationsAndDoctorsBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is SpecializationsLoading ||
          current is SpecializationsSuccess ||
          current is SpecializationsError,
      builder: (context, state) {
        return state.maybeWhen(
          specializationsLoading: () => setupLoading(),
          specializationsSuccess: (specializationDataList) {
              var specializationsList = specializationDataList;
              return setupSuccess(specializationsList);
          },
          specializationsError: (errorHandler) => setupError(),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget setupLoading() {
    return Center(
      child: CircularProgressIndicator(color: ColorsManager.mainBlue),
    );
  }

  Widget setupSuccess(specializationList) {
    return Expanded(
              child: Column(
                children: [
                  DocSpecialityListView(
                    specializationDataList: specializationList ??  [],
                  ),
                  verticalSpace(8),
                  DocListView(doctorsList: specializationList?[0]?.doctorsList),
                ],
              ),
            );
  }

  Widget setupError() {
    return const SizedBox.shrink();
  }
}
