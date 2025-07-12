import 'package:doc_bridge/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../../../core/theming/colors.dart';

class HomeTopBar extends StatelessWidget {
  const HomeTopBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Hello, Ahmed!', style: TextStyles.font18DarkBlueBold),
            Text('How are you today?', style: TextStyles.font12GrayRegular),
          ],
        ),
        CircleAvatar(
          backgroundColor: ColorsManager.moreLighterGray,
          radius: 24.sp,
          child: SvgPicture.asset('assets/svgs/notification.svg'),
        ),
      ],
    );
  }
}
