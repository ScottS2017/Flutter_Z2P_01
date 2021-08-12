import 'package:integration_test/integration_test_driver_extended.dart';

// Use this file to execute integration tests:
//
// flutter drive \
//   --driver=test_driver/integration_test.dart \
//   --target=integration_test/<SOME_TEST>.dart \
//   -d <DEVICE_ID>
//
// To run in a browser (web app), first start chromedriver in
// a different terminal:
//
// chromedriver --port=4444
//
// Then pass "web-server" in place of the <DEVICE_ID>
Future<void> main() => integrationDriver();
