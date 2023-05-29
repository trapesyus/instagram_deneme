import 'package:instagram_deneme/core/extension/extension.dart';
import 'package:flutter/material.dart';

class AppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final BuildContext context;
  final bool backArrow;

  const AppBarWidget(
      {required this.title,
      required this.context,
      required this.backArrow,
      super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: backArrow == true
          ? IconButton(
              icon: const Icon(Icons.arrow_back_ios_new),
              onPressed: () {
                Navigator.pop(context);
              },
            )
          : const SizedBox(),
      elevation: 0,
      centerTitle: true,
      title: Text(title),
    );
  }

  @override
  Size get preferredSize =>
      Size.fromHeight(context.getSizeHeight(responsive: 0.04));
}
