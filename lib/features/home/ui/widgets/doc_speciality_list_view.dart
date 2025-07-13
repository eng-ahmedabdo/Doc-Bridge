import 'package:doc_bridge/core/helper/spacing.dart';
import 'package:doc_bridge/core/theming/colors.dart';
import 'package:doc_bridge/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DocSpecialityListView extends StatelessWidget {
  const DocSpecialityListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100.h,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 8,
        itemBuilder: (context, index) => Container(
          padding: EdgeInsetsDirectional.only(start: index == 0 ? 0 : 24.w),
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
              Text('General', style: TextStyles.font12DarkBlueRegular),
            ],
          ),
        ),
      ),
    );
  }
}
