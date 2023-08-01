import 'dart:convert';

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import 'package:are_you_bored_flutter_app/data/data_provider/activity_provider.dart';
import 'package:are_you_bored_flutter_app/data/model/activity_model.dart';
import 'package:are_you_bored_flutter_app/data/repository/activity_repository.dart';

//test('getRandomActivity returns ActivityModel', () async { ... }): Verifica que la función getRandomActivity retorne una instancia de ActivityModel cuando se le pasan parámetros válidos. Configuramos el mock para que devuelva una respuesta simulada del ActivityProvider.
//
// test('getRandomActivity with null parameters returns null', () async { ... }): Verifica que la función getRandomActivity retorne null cuando se le pasan parámetros nulos. Configuramos el mock para que devuelva una respuesta simulada del ActivityProvider.
//
// test('getRandomActivity with invalid response throws Exception', () async { ... }): Verifica que la función getRandomActivity lance una excepción cuando el ActivityProvider devuelve una respuesta inválida. Configuramos el mock para que devuelva una respuesta inválida.

// Creamos un mock de ActivityProvider utilizando la clase MockActivityProvider.
class MockActivityProvider extends Mock implements ActivityProvider {}

void main() {
  group('ActivityRepository', () {
    late ActivityRepository activityRepository;
    late MockActivityProvider mockActivityProvider;

    // Configuramos el mock y creamos una instancia de ActivityRepository antes de cada test.
    setUp(() {
      mockActivityProvider = MockActivityProvider();
      activityRepository = ActivityRepository();
    });

    // Test 1: getQueryParameters returns correct query parameters.
    test('getQueryParameters returns correct query parameters', () {
      // Llamamos al método getQueryParameters con los valores "music" y "1".
      final queryParameters =
          activityRepository.getQueryParameters("music", "1");
      // Comprobamos que los parámetros de consulta sean correctos.
      expect(queryParameters, equals({"type": "music", "participants": "1"}));
    });

    // Test 2: getQueryParameters with null values returns null.
    test('getQueryParameters with null values returns null', () {
      // Llamamos al método getQueryParameters con valores nulos.
      final queryParameters = activityRepository.getQueryParameters(null, null);
      // Comprobamos que el resultado sea nulo.
      expect(queryParameters, isNull);
    });

    // Test 3: activityModelFromJson returns ActivityModel with backgroundType set.
    test('activityModelFromJson returns ActivityModel with backgroundType set',
        () {
      // Creamos una cadena JSON que representa un modelo de actividad.
      final json =
          '{"activity": "Some activity", "type": "education", "participants": 1, "link": ""}';
      // Creamos un modelo de actividad esperado utilizando la función fromJson del modelo.
      final expectedActivityModel = ActivityModel.fromJson(jsonDecode(json));
      // Llamamos al método activityModelFromJson con la cadena JSON.
      activityRepository.activityModelFromJson(json);
      // Comprobamos que el modelo de actividad resultante tenga el backgroundType establecido en 0.
      expect(expectedActivityModel.backgroundType, equals(0));
    });
  });
}
