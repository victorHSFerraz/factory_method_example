import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pipeline_test/components/custom_dialog.dart';

class IosAlertDialog extends CustomDialog {
  @override
  String getTitle() {
    return "iOS Alert Dialog";
  }

  @override
  Widget create(BuildContext context) {
    return CupertinoAlertDialog(
      title: Text(getTitle()),
      content: const Text('Cupertino Style Alert Dialog'),
      actions: [
        TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Text('Close'),
        )
      ],
    );
  }
}
