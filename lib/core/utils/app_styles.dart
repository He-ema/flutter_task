import 'package:flutter/material.dart';

abstract class AppStyles {
  static TextStyle styleRegularInter10(BuildContext context) => const TextStyle(
        color: Color(0xffC0C0C0),
        fontFamily: "Inter",
        fontSize: 10,
        fontWeight: FontWeight.w400,
      );
  static TextStyle styleRegularInter15(BuildContext context) => const TextStyle(
        color: Color(0xffC0C0C0),
        fontFamily: "Inter",
        fontSize: 15,
        fontWeight: FontWeight.w400,
      );
  static TextStyle styleRegularInter18(BuildContext context) => const TextStyle(
        color: Color(0xffC0C0C0),
        fontFamily: "Inter",
        fontSize: 18,
        fontWeight: FontWeight.w400,
      );
  static TextStyle styleMediumInter15(BuildContext context) => TextStyle(
        color: Theme.of(context).colorScheme.brightness == Brightness.dark
            ? Colors.white
            : Colors.black,
        fontFamily: "Inter",
        fontSize: 15,
        fontWeight: FontWeight.w500,
      );
  static TextStyle styleMediumInter20(BuildContext context) => TextStyle(
        color: Theme.of(context).colorScheme.brightness == Brightness.dark
            ? Colors.white
            : Colors.black,
        fontFamily: "Inter",
        fontSize: 20,
        fontWeight: FontWeight.w500,
      );
  static TextStyle styleRegularInter17(BuildContext context) => const TextStyle(
        color: Colors.white,
        fontFamily: "Inter",
        fontSize: 17,
        fontWeight: FontWeight.w400,
      );
  static TextStyle styleSemiBoldInter18(BuildContext context) => TextStyle(
        color: Theme.of(context).colorScheme.brightness == Brightness.dark
            ? Colors.white
            : Colors.black,
        fontFamily: "Inter",
        fontSize: 18,
        fontWeight: FontWeight.w600,
      );
  static TextStyle styleMediumInter18(BuildContext context) => TextStyle(
        color: Theme.of(context).colorScheme.brightness == Brightness.dark
            ? Colors.white
            : Colors.black,
        fontFamily: "Inter",
        fontSize: 18,
        fontWeight: FontWeight.w500,
      );
  static TextStyle styleRegularInter12(BuildContext context) => TextStyle(
        color: Theme.of(context).colorScheme.brightness == Brightness.dark
            ? Colors.white
            : Colors.black,
        fontFamily: "Inter",
        fontSize: 12,
        fontWeight: FontWeight.w400,
      );
  static TextStyle styleSemiBoldInter20(BuildContext context) => TextStyle(
        color: Theme.of(context).colorScheme.brightness == Brightness.dark
            ? Colors.white
            : Colors.black,
        fontFamily: "Inter",
        fontSize: 20,
        fontWeight: FontWeight.w600,
      );
  static TextStyle styleSemiBoldInter25(BuildContext context) => TextStyle(
        color: Theme.of(context).colorScheme.brightness == Brightness.dark
            ? Colors.white
            : Colors.black,
        fontFamily: "Inter",
        fontSize: 25,
        fontWeight: FontWeight.w600,
      );
  static TextStyle styleSemiBoldInter15(BuildContext context) =>
      const TextStyle(
        color: Colors.red,
        fontFamily: "Inter",
        fontSize: 15,
        fontWeight: FontWeight.w600,
      );

  // used in login button
  static TextStyle styleRegularUnivia20(BuildContext context) =>
      const TextStyle(
        color: Colors.white,
        fontFamily: "UniviaPro",
        fontSize: 20,
        fontWeight: FontWeight.w400,
      );
  static TextStyle styleLightUnivia28(BuildContext context) => TextStyle(
        color: Theme.of(context).brightness == Brightness.dark
            ? Colors.white
            : const Color(0xff666666),
        fontFamily: "UniviaPro",
        fontSize: 28,
        fontWeight: FontWeight.w300,
      );
  static TextStyle styleRegularUnivia30(BuildContext context) => TextStyle(
        color: Theme.of(context).brightness == Brightness.dark
            ? Colors.white
            : const Color(0xff666666),
        fontFamily: "UniviaPro",
        fontSize: 30,
        fontWeight: FontWeight.w400,
      );
  static TextStyle styleMediumUnivia30(BuildContext context) => TextStyle(
        color: Theme.of(context).brightness == Brightness.dark
            ? Colors.white
            : Colors.black,
        fontFamily: "UniviaPro",
        fontSize: 30,
        fontWeight: FontWeight.w500,
      );
  static TextStyle styleExtraBoldUnivia30(BuildContext context) => TextStyle(
        color: Theme.of(context).brightness == Brightness.dark
            ? Colors.white
            : const Color(0xff666666),
        fontFamily: "UniviaPro",
        fontSize: 30,
        fontWeight: FontWeight.w800,
      );
  static TextStyle styleBoldUnivia30(BuildContext context) => TextStyle(
        color: Theme.of(context).brightness == Brightness.dark
            ? Colors.white
            : const Color(0xff666666),
        fontFamily: "UniviaPro",
        fontSize: 30,
        fontWeight: FontWeight.w700,
      );

  static TextStyle styleBoldUnivia45(BuildContext context) => TextStyle(
        color: Theme.of(context).brightness == Brightness.dark
            ? Colors.white
            : const Color(0xff666666),
        fontFamily: "UniviaPro",
        fontSize: 45,
        fontWeight: FontWeight.w700,
      );
  static TextStyle styleRegularUnivia10(BuildContext context) => TextStyle(
        color: Theme.of(context).colorScheme.brightness == Brightness.dark
            ? Colors.white
            : Colors.white,
        fontFamily: "UniviaPro",
        fontSize: 10,
        fontWeight: FontWeight.w400,
      );
  static TextStyle styleRegularUnivia15(BuildContext context) =>
      const TextStyle(
        color: Colors.white,
        fontFamily: "UniviaPro",
        fontSize: 15,
        fontWeight: FontWeight.w400,
      );
  static TextStyle styleRegularUnivia21(BuildContext context) =>
      const TextStyle(
        color: Colors.white,
        fontFamily: "UniviaPro",
        fontSize: 21,
        fontWeight: FontWeight.w400,
      );
  static TextStyle styleRegularUnivia25(BuildContext context) => TextStyle(
        color: Theme.of(context).colorScheme.brightness == Brightness.dark
            ? Colors.white
            : Colors.black,
        fontFamily: "UniviaPro",
        fontSize: 25,
        fontWeight: FontWeight.w400,
      );
  static TextStyle styleMediumUnivia24(BuildContext context) => TextStyle(
        color: Theme.of(context).colorScheme.brightness == Brightness.dark
            ? Colors.white
            : Colors.black,
        fontFamily: "UniviaPro",
        fontSize: 24,
        fontWeight: FontWeight.w500,
      );
  static TextStyle styleMediumUnivia20(BuildContext context) => const TextStyle(
        color: Colors.white,
        fontFamily: "UniviaPro",
        fontSize: 20,
        fontWeight: FontWeight.w500,
      );
  static TextStyle styleMediumUnivia36(BuildContext context) => const TextStyle(
        color: Colors.white,
        fontFamily: "UniviaPro",
        fontSize: 36,
        fontWeight: FontWeight.w500,
      );
}
