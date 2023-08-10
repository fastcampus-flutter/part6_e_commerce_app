import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../core/utils/constant.dart';
import '../../../data/entity/display/target_api/target_api.dart';

class ServerSelector extends StatelessWidget {
  const ServerSelector({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: Hive.box<TargetApi>(Constants.targetApiKey).listenable(),
      builder: (context, box, widget) {
        var source = box.get(
          Constants.targetApiKey,
          defaultValue: TargetApi.REMOTE,
        );

        return AlertDialog(
          title: const Text('데이터 소스를 선택해주세요'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              RadioListTile<TargetApi>(
                value: TargetApi.REMOTE,
                groupValue: source,
                onChanged: (value) {
                  box.put(Constants.targetApiKey, value ?? TargetApi.REMOTE);
                },
                title: Text('Remote Api'),
              ),
              RadioListTile<TargetApi>(
                value: TargetApi.MOCK,
                groupValue: source,
                onChanged: (value) {
                  box.put(Constants.targetApiKey, TargetApi.MOCK);
                },
                title: Text('Mock Api'),
              ),
            ],
          ),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
                ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: const Text('앱을 재실행 해주세요.'),
                  backgroundColor: Theme.of(context).highlightColor,
                  behavior: SnackBarBehavior.floating,
                ));
              },
              child: const Text('확인'),
            ),
          ],
        );
      },
    );
  }
}
