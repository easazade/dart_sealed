import 'package:sealed_generators/src/manifest/manifest.dart';
import 'package:test/test.dart';

import '../../utils/exception_utils.dart';

void main() {
  group('class ManifestType', () {
    test('initialization', () {
      final a = ManifestType(name: 'double', isNullable: true);
      expect(a.name, 'double');
      expect(a.isNullable, true);

      final b = ManifestType(name: '_Object', isNullable: false);
      expect(b.name, '_Object');
      expect(b.isNullable, false);

      expect(
        () => ManifestType(name: 'double?', isNullable: true),
        throwsAssertion(),
      );
    });

    test('constant defaultSuper', () {
      final type = ManifestType.defaultSuper;
      expect(type.name, 'Object');
      expect(type.isNullable, false);
    });
  });

  group('class ManifestParam', () {
    test('initialization', () {
      final a = ManifestType(name: 'T', isNullable: false);
      final bad = ManifestType(name: 'T', isNullable: true);
      final u = ManifestType(name: 'num', isNullable: true);
      final p = ManifestParam(type: a, upper: u);

      expect(p.type, a);
      expect(p.upper, u);

      expect(
        () => ManifestParam(type: bad, upper: u),
        throwsAssertion(),
      );
    });

    test('constant defaultSuper', () {
      final type = ManifestType.defaultSuper;
      expect(type.name, 'Object');
      expect(type.isNullable, false);
    });
  });

  group('class ManifestField', () {
    test('initialization', () {
      final type = ManifestType(name: 'double', isNullable: true);
      final a = ManifestField(name: 'angle', type: type);
      expect(a.name, 'angle');
      expect(a.type, type);

      final b = ManifestField(name: 'angle', type: type);
      expect(b.name, 'angle');
      expect(b.type, type);

      expect(
            () => ManifestField(name: '_angle', type: type),
        throwsAssertion(),
      );
      expect(
            () => ManifestField(name: 'Angle', type: type),
        throwsAssertion(),
      );
    });
  });

  group('class ManifestItem', () {
    test('initialization', () {
      final type1 = ManifestType(name: 'double', isNullable: true);
      final field1 = ManifestField(name: 'angle', type: type1);
      final item1 = ManifestItem(name: 'Windy', fields: []);
      final item2 = ManifestItem(name: 'Windy', fields: [field1]);

      expect(item1.name, equals('Windy'));
      expect(item1.fields, isEmpty);
      expect(item2.name, equals('Windy'));
      expect(item2.fields, contains(field1));

      expect(
            () => ManifestItem(name: 'windy', fields: []),
        throwsAssertion(),
      );
      expect(
            () => ManifestItem(name: 'Windy?', fields: [field1]),
        throwsAssertion(),
      );
      expect(
            () => ManifestItem(name: '_Windy', fields: [field1]),
        throwsAssertion(),
      );
    });
  });

  group('class Manifest', () {
    test('initialization', () {
      final item = ManifestItem(name: 'Sunny', fields: []);
      final manifest = Manifest(name: 'Weather', items: [item]);
      final type = ManifestType(name: 'T', isNullable: false);
      final upper = ManifestType(name: 'num', isNullable: true);
      final param = ManifestParam(type: type, upper: upper);
      final manifest2 = Manifest(
        name: 'Weather',
        items: [item],
        params: [param],
      );

      expect(manifest.name, equals('Weather'));
      expect(manifest.items, contains(item));
      expect(manifest.params, isEmpty);
      expect(manifest2.params, contains(param));

      expect(
        () => Manifest(name: 'weather', items: [item]),
        throwsAssertion(),
      );
      expect(
        () => Manifest(name: 'Weather?', items: [item]),
        throwsAssertion(),
      );
      expect(
        () => Manifest(name: 'Weather', items: []),
        throwsAssertion(),
      );
      expect(
            () => Manifest(name: '_Weather', items: []),
        throwsAssertion(),
      );
    });
  });
}
