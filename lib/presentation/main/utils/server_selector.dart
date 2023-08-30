import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';

import '../../../core/utils/constant.dart';
import '../../../data/entity/display/target_api/target_api.dart';
import 'snack_bar/common_snack_bar.dart';

class ServerSelector extends StatefulWidget {
  const ServerSelector({Key? key}) : super(key: key);

  @override
  State<ServerSelector> createState() => _ServerSelectorState();
}

class _ServerSelectorState extends State<ServerSelector> {
  late Box<TargetApi> box;

  @override
  void initState() {
    super.initState();

    box = Hive.box<TargetApi>(Constants.targetApiKey);
  }

  @override
  Widget build(BuildContext context) {
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
              setState(() {});
            },
            title: Text('Remote Api'),
          ),
          RadioListTile<TargetApi>(
            value: TargetApi.MOCK,
            groupValue: source,
            onChanged: (value) {
              box.put(Constants.targetApiKey, TargetApi.MOCK);
              setState(() {});
            },
            title: Text('Mock Api'),
          ),
        ],
      ),
      actions: [
        ElevatedButton(
          onPressed: () {
            Navigator.of(context).pop();
            CommonSnackBar.successSnackBar(
              context,
              msg: '앱을 재실행 해주세요.',
            );
          },
          child: const Text('확인'),
        ),
      ],
    );
  }
}
