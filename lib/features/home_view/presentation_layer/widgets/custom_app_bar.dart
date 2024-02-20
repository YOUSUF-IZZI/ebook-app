import 'package:ebook/core/utils/app_router.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key,});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () {
          context.push(AppRouter.bookDetailed);
        },
      ),
      actions: [
        IconButton(
          icon: const Icon(CupertinoIcons.search),
          onPressed: () {},
        ),],
    );
  }
}