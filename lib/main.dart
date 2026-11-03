import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'animoo.dart';
import 'core/functions/initialization_app_logic.dart';
import 'core/routes/app_router.dart';
import 'core/services/service_locator.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  setupServiceLocator();
  String initialRoute = await initializationLogic();
  FlutterNativeSplash.remove();
  runApp(Animoo(appRouter: AppRouter(), initialRoute: initialRoute));
}
