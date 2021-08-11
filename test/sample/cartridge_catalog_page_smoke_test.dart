import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:golden_toolkit/golden_toolkit.dart';
import 'package:mode_app/cartridges/catalog_cartridges_page.dart';
import 'package:mode_app/theme.dart';

void main() {
  testGoldens('Smoke test: Cartridge catalog page', (WidgetTester tester) async {
    final screenshotBuilder = DeviceBuilder()
      ..overrideDevicesForAllScenarios(devices: [Device.phone])
      ..addScenario(
        widget: _buildApp(
          content: CartridgesCatalogPage(
            presenter: FakeCatalogPresenter(),
          ),
        ),
        name: 'Cartridge Catalog Page',
      );

    await tester.pumpDeviceBuilder(screenshotBuilder);

    await screenMatchesGolden(tester, 'cartridge-catalog_page_smoke_test');
  });
}

Widget _buildApp({
  required Widget content,
}) {
  return MaterialApp(
    title: 'Mode',
    theme: modeTheme,
    home: Scaffold(
      body: content,
    ),
    debugShowCheckedModeBanner: false,
  );
}
