import 'package:doc_bridge/core/di/dependency_injection.dart';
import 'package:doc_bridge/core/helper/constants.dart';
import 'package:doc_bridge/core/helper/extentions.dart';
import 'package:doc_bridge/core/helper/shared_pref_helper.dart';
import 'package:doc_bridge/core/routing/app_router.dart';
import 'package:doc_bridge/doc_bridge.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  setupGetIt();
  // To fix texts being hidden bug in flutter screenutil in release mode
  await ScreenUtil.ensureScreenSize();
  await checkedIfLoggedInUser();
  runApp(DocBridge(appRouter: AppRouter()));
}

checkedIfLoggedInUser() async {
  String? userToken = await SharedPrefHelper.getString(
    SharedPrefKeys.userToken,
  );
  if (!userToken.isNullOrEmpty()) {
    isLoggedInUser = true;
  } else {
    isLoggedInUser = false;
  }
}
