import 'package:doc_bridge/core/helper/extentions.dart';
import 'package:doc_bridge/core/routing/routes.dart';
import 'package:doc_bridge/core/theming/colors.dart';
import 'package:doc_bridge/core/theming/styles.dart';
import 'package:flutter/material.dart';

class GetStartedButton extends StatelessWidget {
  const GetStartedButton({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {
        context.pushedNamed(Routes.loginScreen);
      },
      style: ButtonStyle(
        backgroundColor: WidgetStateProperty.all(ColorsManager.mainBlue),
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
        shape: WidgetStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
        ),
        maximumSize: WidgetStateProperty.all(const Size(double.infinity, 60)),
      ),
      child: Center(
        child: Text('Get Started', style: TextStyles.font16WhiteMedium),
      ),
    );
  }
}
