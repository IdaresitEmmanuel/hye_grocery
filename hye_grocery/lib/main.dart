import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hye_grocery/injection.dart';
import 'package:hye_grocery/presentation/core/app_widget.dart';
import 'package:injectable/injectable.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  configureInjection(Environment.prod);
  LicenseRegistry.addLicense(() async* {
    final license = await rootBundle.loadString('assets/fonts/nunito/OFL.txt');
    yield LicenseEntryWithLineBreaks(['google_fonts'], license);
  });
  runApp(const AppWidget());
}
