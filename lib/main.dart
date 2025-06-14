import 'package:doc_bridge/core/di/dependency_injection.dart';
import 'package:doc_bridge/core/routing/app_router.dart';
import 'package:doc_bridge/doc_bridge.dart';
import 'package:flutter/material.dart';

void main() {
  setupGetIt();
  runApp(DocBridge(appRouter: AppRouter()));
}
