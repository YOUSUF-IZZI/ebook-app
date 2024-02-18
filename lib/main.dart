import 'package:ebook/features/home_view/presentation_layer/pages/home_page.dart';
import 'package:flutter/material.dart';
import 'core/utils/app_colors.dart';

void main() {
  runApp(const EbookApp());
}

class EbookApp extends StatelessWidget {
  const EbookApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: AppColors.primaryColor,
      ),
      home: const HomePage(),
    );
  }
}


