import 'package:final_task/core/utils/app_styles.dart';
import 'package:flutter/material.dart';

void customDialouge(BuildContext context,
    {required String title,
    required String subTitle,
    @required void Function()? onPressed}) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button to dismiss
    builder: (BuildContext context) {
      return AlertDialog(
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? const Color(0xff1F1F1F)
            : Colors.white,
        title: Text(title),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text(subTitle),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            onPressed: onPressed ??
                () {
                  Navigator.of(context).pop();
                },
            child: Text(
              'OK',
              style: AppStyles.styleMediumInter15(context),
            ),
          ),
        ],
      );
    },
  );
}
