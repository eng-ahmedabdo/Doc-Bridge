import 'package:doc_bridge/core/theming/styles.dart';
import 'package:flutter/material.dart';

class DocSpecialitySeeAll extends StatelessWidget {
  const DocSpecialitySeeAll({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('Doctor Speciality', style: TextStyles.font18DarkBlueSemiBold),
        const Spacer(),
        Text('See All', style: TextStyles.font12BlueRegular),
      ],
    );
  }
}
