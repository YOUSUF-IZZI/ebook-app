import 'package:ebook/core/utils/app_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class HomePageAppBar extends StatelessWidget implements PreferredSizeWidget {
  const HomePageAppBar({
    super.key,
  });

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Image.asset(
        'assets/images/logo.png',
        width: MediaQuery.sizeOf(context).width * 0.25,
      ),
      centerTitle: true,
      actions: [
        IconButton(
          icon:
              Image.asset('assets/images/ic search.png', width: 24, height: 24),
          onPressed: () {
            context.push(AppRouter.search);
          },
        ),
      ],
    );
  }
}
