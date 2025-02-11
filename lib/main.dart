import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:get/route_manager.dart';
import 'package:simple/controller/theme_controller.dart';
import 'package:simple/widgets/default_icon_btn.dart';
import 'package:simple/widgets/default_primary_btn.dart';
import 'package:simple/widgets/default_text_btn.dart';

void main() {
  Get.put<ThemeController>(ThemeController());
  runApp(const MyApp());
}

class MyApp extends GetView<ThemeController> {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GetMaterialApp(
        title: 'Flutter Demo',
        themeMode: controller.getThemeMode,
        theme: ThemeData(
          fontFamily: 'Roboto',
          brightness: Brightness.light,
          iconButtonTheme: IconButtonThemeData(
            style: ButtonStyle(
              padding: WidgetStatePropertyAll(
                EdgeInsets.all(5),
              ),
              shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              foregroundColor: WidgetStateProperty.resolveWith<Color>(
                  (Set<WidgetState> states) {
                if (states.contains(WidgetState.disabled)) {
                  return Colors.black;
                }
                return Colors.white;
              }),
              backgroundColor: WidgetStateProperty.resolveWith<Color>(
                (Set<WidgetState> states) {
                  if (states.contains(WidgetState.pressed)) {
                    return Colors.teal.shade300;
                  } else if (states.contains(WidgetState.disabled)) {
                    return Colors.grey.shade300;
                  }
                  return Colors.blue.shade300;
                },
              ),
            ),
          ),
          textButtonTheme: TextButtonThemeData(
            style: ButtonStyle(
              shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              foregroundColor: WidgetStateProperty.resolveWith<Color>(
                  (Set<WidgetState> states) {
                if (states.contains(WidgetState.disabled)) {
                  return Colors.grey.shade500;
                } else if (states.contains(WidgetState.pressed)) {
                  return Colors.teal.shade300;
                }
                return Colors.blue.shade300;
              }),
              backgroundColor: WidgetStateProperty.resolveWith<Color>(
                (Set<WidgetState> states) {
                  if (states.contains(WidgetState.pressed)) {
                    return Colors.teal.shade50;
                  }
                  return Colors.transparent;
                },
              ),
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              padding: WidgetStatePropertyAll(
                EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
              shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              foregroundColor: WidgetStateProperty.resolveWith<Color>(
                  (Set<WidgetState> states) {
                if (states.contains(WidgetState.disabled)) {
                  return Colors.black;
                }
                return Colors.white;
              }),
              backgroundColor: WidgetStateProperty.resolveWith<Color>(
                (Set<WidgetState> states) {
                  if (states.contains(WidgetState.pressed)) {
                    return Colors.teal.shade300;
                  } else if (states.contains(WidgetState.disabled)) {
                    return Colors.grey.shade300;
                  }
                  return Colors.blue.shade300;
                },
              ),
            ),
          ),
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        darkTheme: ThemeData(
          iconButtonTheme: IconButtonThemeData(
            style: ButtonStyle(
              padding: WidgetStatePropertyAll(
                EdgeInsets.all(5),
              ),
              shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              foregroundColor: WidgetStateProperty.resolveWith<Color>(
                  (Set<WidgetState> states) {
                if (states.contains(WidgetState.disabled)) {
                  return Colors.black;
                }
                return Colors.white;
              }),
              backgroundColor: WidgetStateProperty.resolveWith<Color>(
                (Set<WidgetState> states) {
                  if (states.contains(WidgetState.pressed)) {
                    return Colors.teal.shade300;
                  } else if (states.contains(WidgetState.disabled)) {
                    return Colors.blue.shade50;
                  }
                  return Colors.blue.shade900;
                },
              ),
            ),
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ButtonStyle(
              padding: WidgetStatePropertyAll(
                EdgeInsets.symmetric(horizontal: 24, vertical: 12),
              ),
              shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              foregroundColor: WidgetStateProperty.resolveWith<Color>(
                  (Set<WidgetState> states) {
                if (states.contains(WidgetState.disabled)) {
                  return Colors.black;
                }
                return Colors.white;
              }),
              backgroundColor: WidgetStateProperty.resolveWith<Color>(
                (Set<WidgetState> states) {
                  if (states.contains(WidgetState.pressed)) {
                    return Colors.teal.shade300;
                  } else if (states.contains(WidgetState.disabled)) {
                    return Colors.blue.shade50;
                  }
                  return Colors.blue.shade900;
                },
              ),
            ),
          ),
          textButtonTheme: TextButtonThemeData(
            style: ButtonStyle(
              shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(15),
                ),
              ),
              foregroundColor: WidgetStateProperty.resolveWith<Color>(
                  (Set<WidgetState> states) {
                if (states.contains(WidgetState.disabled)) {
                  return Colors.black;
                } else if (states.contains(WidgetState.pressed)) {
                  return Colors.teal.shade300;
                }
                return Colors.blue.shade900;
              }),
              backgroundColor: WidgetStateProperty.resolveWith<Color>(
                (Set<WidgetState> states) {
                  if (states.contains(WidgetState.pressed)) {
                    return Colors.teal.shade200;
                  }
                  return Colors.transparent;
                },
              ),
            ),
          ),
        ),
        home: const HomePage(),
      ),
    );
  }
}

class HomePage extends GetView<ThemeController> {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 4,
            child: Row(
              children: [
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Large Button',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 30),
                      DefaultPrimaryBtn(
                        isLarge: true,
                        onPressed: () {},
                      ),
                      DefaultTextBtn(
                        isLarge: true,
                        onPressed: () {},
                      ),
                      DefaultIconBtn(
                        isLarge: true,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Small Button',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 30),
                      DefaultPrimaryBtn(
                        onPressed: () {},
                      ),
                      DefaultTextBtn(
                        onPressed: () {},
                      ),
                      DefaultIconBtn(
                        onPressed: () {},
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Column(
              children: [
                Text(
                  'Disabled buttons',
                  style: TextStyle(fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    DefaultPrimaryBtn(),
                    DefaultIconBtn(),
                    DefaultTextBtn(),
                  ],
                ),
                const SizedBox(height: 60),
              ],
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => controller.switchThemeMode(),
        child: Obx(
          () => Icon(
            controller.isDarkMode.value ? Icons.dark_mode : Icons.light_mode,
          ),
        ),
      ),
    );
  }
}
