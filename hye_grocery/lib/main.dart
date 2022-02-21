import 'package:flutter/material.dart';
import 'package:hye_grocery/injection.dart';
import 'package:hye_grocery/presentation/core/app_widget.dart';
import 'package:injectable/injectable.dart';

void main() {
  configureInjection(Environment.prod);
  runApp(const AppWidget());
}
