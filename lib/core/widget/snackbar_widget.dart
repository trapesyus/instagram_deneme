import 'package:flutter/material.dart';

class SnackBarWidget {
  static showMessage({required String text, required BuildContext context}) {
    final snackBar = SnackBar(content: Text(text));
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
