import 'package:flutter/material.dart';
import 'package:flutter_advanced_project/core/di/dependency_injection.dart';
import 'package:flutter_advanced_project/core/routes/app_router.dart';
import 'package:flutter_advanced_project/doc_app.dart';

void main() {
  setupGetIt();
  runApp(DocApp(
    appRouter: AppRouter(),
  ));
}
