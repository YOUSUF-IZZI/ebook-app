import 'package:ebook/core/utils/app_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BookDetailedPageAppbar extends StatelessWidget
    implements PreferredSizeWidget {
  const BookDetailedPageAppbar({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(50);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.close),
        onPressed: () => Navigator.pop(context),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.home),
          onPressed: () {
            context.pushReplacement(AppRouter.initialRoute);
          },
        ),
      ],
    );
  }
}
