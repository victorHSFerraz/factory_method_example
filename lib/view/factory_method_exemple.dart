import 'package:flutter/material.dart';
import 'package:pipeline_test/components/android_alert_dialog.dart';
import 'package:pipeline_test/components/custom_dialog.dart';
import 'package:pipeline_test/components/ios_alert_dialog.dart';

class FactoryMethodExample extends StatefulWidget {
  const FactoryMethodExample({Key? key}) : super(key: key);

  @override
  State<FactoryMethodExample> createState() => _FactoryMethodExampleState();
}

class _FactoryMethodExampleState extends State<FactoryMethodExample> {
  final List<CustomDialog> customDialogList = [
    AndroidAlertDialog(),
    IosAlertDialog(),
  ];

  int _selectedDialogIndex = 0;

  Future _showCustomDialog(BuildContext context) async {
    var selectedDialog = customDialogList[_selectedDialogIndex];
    await selectedDialog.show(context);
  }

  void _setSelectedDialogIndex(int index) {
    setState(() {
      _selectedDialogIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextButton(
              onPressed: () => _setSelectedDialogIndex(0),
              child: const Text('Android'),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () => _setSelectedDialogIndex(1),
              child: const Text('iOS'),
            ),
            const SizedBox(height: 20),
            TextButton(
              onPressed: () => _showCustomDialog(context),
              child: const Text('Show Dialog'),
            )
          ],
        ),
      ),
    );
  }
}
