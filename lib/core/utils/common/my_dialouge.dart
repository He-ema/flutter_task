import 'package:final_task/features/auth/presentation/views/widgets/custom_button.dart';
import 'package:flutter/material.dart';

void myDialouge(
  BuildContext context, {
  required String text,
  void Function()? onPressed,
}) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button to dismiss
    builder: (BuildContext context) {
      return AlertDialog(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        contentPadding: const EdgeInsets.all(10),
        backgroundColor: Theme.of(context).brightness == Brightness.dark
            ? const Color(0xff1F1F1F)
            : Colors.white,
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(text),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: MediaQuery.sizeOf(context).width * 0.3,
              height: 30,
              child: CustomButton(
                text: const Text('Ok'),
                color: const Color(0xffF39200),
                onPressed: onPressed,
              ),
            )
          ],
        ),
      );
    },
  );
}
