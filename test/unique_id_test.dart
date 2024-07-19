import 'package:flutter_core_unique_id/unique_id.dart';
import 'package:flutter_core_unique_id/unique_id_method_channel.dart';
import 'package:flutter_core_unique_id/unique_id_platform_interface.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockUniqueIdPlatform
    with MockPlatformInterfaceMixin
    implements UniqueIdPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');

  @override
  Future<String?> getUniqueId() => Future.value();
}

void main() {
  final UniqueIdPlatform initialPlatform = UniqueIdPlatform.instance;

  test('$MethodChannelUniqueId is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelUniqueId>());
  });

  test('getPlatformVersion', () async {
    UniqueId uniqueIdPlugin = UniqueId();
    MockUniqueIdPlatform fakePlatform = MockUniqueIdPlatform();
    UniqueIdPlatform.instance = fakePlatform;

    expect(await uniqueIdPlugin.getPlatformVersion(), '42');
  });
}
