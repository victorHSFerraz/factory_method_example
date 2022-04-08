import 'package:flutter/material.dart';
import 'package:pipeline_test/components/custom_dialog.dart';

class AndroidAlertDialog extends CustomDialog {
  @override
  String getTitle() {
    return "Android Alert Dialog";
  }

  @override
  Widget create(BuildContext context) {
    return AlertDialog(
      title: Text(getTitle()),
      content: const Text('Material Style Alert Dialog'),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Close'),
        )
      ],
    );
  }
}
