import 'package:doc_bridge/features/home/data/models/specilization_response_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../core/helper/spacing.dart';
import '../../../../core/theming/colors.dart';
import '../../../../core/theming/styles.dart';

class DocSpecialityListViewItem extends StatelessWidget {
  final SpecializationsData? specializationsData;
  final int itemIndex;
  const DocSpecialityListViewItem({super.key, required this.specializationsData, required this.itemIndex});

  @override
  Widget build(BuildContext context) {
    return Padding(
          padding: EdgeInsetsDirectional.only(start: itemIndex == 0 ? 0 : 24.w),
          child: Column(
            children: [
              CircleAvatar(
                backgroundColor: ColorsManager.lightBlue,
                radius: 28.sp,
                child: SvgPicture.asset(
                  'assets/svgs/general_speciality.svg',
                  height: 40.h,
                  width: 40.w,
                ),
              ),
              verticalSpace(8.0),
              Text(specializationsData?.name ?? 'General', style: TextStyles.font12DarkBlueRegular),
            ],
          ),
        );
  }
}