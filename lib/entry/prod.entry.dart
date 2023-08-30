import 'package:flutter_dotenv/flutter_dotenv.dart';
import '../firebase_options.dart';
import '../main.dart' as entry;

void main() async {
  await dotenv.load(fileName: 'assets/env/.env');

  entry.main(
    dotenv.env['FLAVOR'],
    DefaultFirebaseOptions.currentPlatform,
  );
}
