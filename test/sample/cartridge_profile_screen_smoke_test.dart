import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:mode_app/cartridges/cartridge_profile_screen.dart';
import 'package:mode_app/theme.dart';

void main() {
  testGoldens('Smoke test: Cartridge Profile', (WidgetTester tester) async {
    final screenshotBuilder = DeviceBuilder()
      ..overrideDevicesForAllScenarios(devices: [Device.phone])
      ..addScenario(
        widget: _buildApp(
          content: CartridgeProfileScreen(
            onBackPressed: () {},
          ),
        ),
        name: 'Cartridge Profile - 1',
      )
      ..addScenario(
          widget: _buildApp(
            content: CartridgeProfileScreen(
              key: const ValueKey('screen_cartridge-profile'),
              onBackPressed: () {},
            ),
          ),
          name: 'Cartridge Profile - 2',
          onCreate: (containerKey) async {
            await _scrollScreenByMultiples(
              tester: tester,
              screenMultiples: 1,
              scenarioKey: containerKey,
              screenKey: const ValueKey('screen_cartridge-profile'),
            );
          })
      ..addScenario(
          widget: _buildApp(
            content: CartridgeProfileScreen(
              key: const ValueKey('screen_cartridge-profile'),
              onBackPressed: () {},
            ),
          ),
          name: 'Cartridge Profile - 3',
          onCreate: (containerKey) async {
            await _scrollScreenByMultiples(
              tester: tester,
              screenMultiples: 2,
              scenarioKey: containerKey,
              screenKey: const ValueKey('screen_cartridge-profile'),
            );
          })
      ..addScenario(
          widget: _buildApp(
            content: CartridgeProfileScreen(
              key: const ValueKey('screen_cartridge-profile'),
              onBackPressed: () {},
            ),
          ),
          name: 'Cartridge Profile - 4',
          onCreate: (containerKey) async {
            await _scrollScreenByMultiples(
              tester: tester,
              screenMultiples: 3,
              scenarioKey: containerKey,
              screenKey: const ValueKey('screen_cartridge-profile'),
            );
          })
      ..addScenario(
          widget: _buildApp(
            content: CartridgeProfileScreen(
              key: const ValueKey('screen_cartridge-profile'),
              onBackPressed: () {},
            ),
          ),
          name: 'Cartridge Profile - 5',
          onCreate: (containerKey) async {
            await _scrollScreenByMultiples(
              tester: tester,
              screenMultiples: 4,
              scenarioKey: containerKey,
              screenKey: const ValueKey('screen_cartridge-profile'),
            );
          });

    await tester.pumpDeviceBuilder(screenshotBuilder);

    await screenMatchesGolden(tester, 'cartridge-profile_screen_smoke_test');
  });
}

Widget _buildApp({
  required Widget content,
}) {
  return MaterialApp(
    title: 'Mode',
    theme: modeTheme,
    home: content,
    debugShowCheckedModeBanner: false,
  );
}

Future<void> _scrollScreenByMultiples({
  required WidgetTester tester,
  required int screenMultiples,
  required Key scenarioKey,
  required Key screenKey,
}) async {
  final cartridgeScreenFinder = find.descendant(of: find.byKey(scenarioKey), matching: find.byKey(screenKey));
  await tester.drag(cartridgeScreenFinder, Offset(0, -Device.phone.size.height * screenMultiples));
}
