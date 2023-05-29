import 'package:flutter/material.dart';

extension NavigatorPush on Widget {
  navigatorPush({required BuildContext context}) =>
      Navigator.push(context, MaterialPageRoute(builder: (context) => this));
}

extension NavigatorPushReplacement on Widget {
  navigatorPushReplacement({required BuildContext context}) =>
      Navigator.pushReplacement(
          context, MaterialPageRoute(builder: (context) => this));
}

//Size for Responsive Screen and SizedBox
extension GetSizeHeight on BuildContext {
  double getSizeHeight({required double responsive}) =>
      MediaQuery.of(this).size.height * responsive;
}

extension GetSizeWidth on BuildContext {
  double getSizeWidth({required double responsive}) =>
      MediaQuery.of(this).size.height * responsive;
}

// Padding for Widgets
extension GetPaddingWidthHorizontal on Widget {
  Padding getPaddingWidthHorizontal(
          {required double responsive, required BuildContext context}) =>
      Padding(
        padding: EdgeInsets.symmetric(
            horizontal: context.getSizeWidth(responsive: responsive)),
        child: this,
      );
}

extension GetPaddingWidthLeft on Widget {
  Padding getPaddingWidthLeft(
          {required double responsive, required BuildContext context}) =>
      Padding(
        padding:
            EdgeInsets.only(left: context.getSizeWidth(responsive: responsive)),
        child: this,
      );
}

extension GetPaddingWidthRight on Widget {
  Padding getPaddingWidthRight(
          {required double responsive, required BuildContext context}) =>
      Padding(
        padding: EdgeInsets.only(
            right: context.getSizeWidth(responsive: responsive)),
        child: this,
      );
}

extension GetPaddingHeigthVertical on Widget {
  Padding getPaddingHeigthVertical(
          {required double responsive, required BuildContext context}) =>
      Padding(
        padding: EdgeInsets.symmetric(
            vertical: context.getSizeHeight(responsive: responsive)),
        child: this,
      );
}

extension GetPaddingHeigthBottom on Widget {
  Padding getPaddingHeigthBottom(
          {required double responsive, required BuildContext context}) =>
      Padding(
        padding: EdgeInsets.only(
            bottom: context.getSizeHeight(responsive: responsive)),
        child: this,
      );
}

extension GetPaddingHeigthTop on Widget {
  Padding getPaddingHeigthTop(
          {required double responsive, required BuildContext context}) =>
      Padding(
        padding: EdgeInsets.only(
            bottom: context.getSizeHeight(responsive: responsive)),
        child: this,
      );
}
/*
//Text Widget and Text Widget Style Parameter
extension SetTextStyle on String {
  //Body Style
  Text? setTextBodyLarge(
          {required Color color, required BuildContext context}) =>
      Text(this,
          style: Theme.of(context).textTheme.bodyLarge?.copyWith(color: color));

  Text? setTextBodyMedium(
          {required Color color, required BuildContext context}) =>
      Text(this,
          style:
              Theme.of(context).textTheme.bodyMedium?.copyWith(color: color));
  Text? setTextBodySmall(
          {required Color color, required BuildContext context}) =>
      Text(this,
          style: Theme.of(context).textTheme.bodySmall?.copyWith(color: color));

  //HeadLine Style
  Text? setTextHeadLineSmall(
          {required Color color, required BuildContext context}) =>
      Text(this,
          style: Theme.of(context)
              .textTheme
              .headlineSmall
              ?.copyWith(color: color));
  Text? setTextHeadLineMedium(
          {required Color color, required BuildContext context}) =>
      Text(this,
          style: Theme.of(context)
              .textTheme
              .headlineMedium
              ?.copyWith(color: color));
  Text? setTextHeadLineLarge(
          {required Color color, required BuildContext context}) =>
      Text(this,
          style: Theme.of(context)
              .textTheme
              .headlineLarge
              ?.copyWith(color: color));

//Title Style
  Text? setTextTitleLarge(
          {required Color color, required BuildContext context}) =>
      Text(this,
          style:
              Theme.of(context).textTheme.titleLarge?.copyWith(color: color));
  Text? setTextTitleMedium(
          {required Color color, required BuildContext context}) =>
      Text(this,
          style:
              Theme.of(context).textTheme.titleMedium?.copyWith(color: color));

  Text? setTextTitleSmall(
          {required Color color, required BuildContext context}) =>
      Text(this,
          style:
              Theme.of(context).textTheme.titleSmall?.copyWith(color: color));

  //Display Style
  Text? setTextDisplayLarge(
          {required Color color, required BuildContext context}) =>
      Text(this,
          style:
              Theme.of(context).textTheme.displayLarge?.copyWith(color: color));
  Text? setTextDisplayMedium(
          {required Color color, required BuildContext context}) =>
      Text(this,
          style: Theme.of(context)
              .textTheme
              .displayMedium
              ?.copyWith(color: color));

  Text? setTextDisplaySmall(
          {required Color color, required BuildContext context}) =>
      Text(this,
          style:
              Theme.of(context).textTheme.displaySmall?.copyWith(color: color));

  //Label Style
  Text? setTextLabelLarge(
          {required Color color, required BuildContext context}) =>
      Text(this,
          style:
              Theme.of(context).textTheme.labelLarge?.copyWith(color: color));

  Text? setTextLabelMedium(
          {required Color color, required BuildContext context}) =>
      Text(this,
          style:
              Theme.of(context).textTheme.labelMedium?.copyWith(color: color));

  Text? setTextLabelSmall(
          {required Color color, required BuildContext context}) =>
      Text(this,
          style:
              Theme.of(context).textTheme.labelSmall?.copyWith(color: color));
}*/
