import 'package:ebook/core/utils/app_router.dart';
import 'package:ebook/core/utils/app_themes.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const EbookApp());
}

class EbookApp extends StatelessWidget {
  const EbookApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: AppRouter.router,
      debugShowCheckedModeBanner: false,
      theme: AppThemes.dark,
    );
  }
}


