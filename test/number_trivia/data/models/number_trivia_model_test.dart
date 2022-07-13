import 'dart:convert';

import 'package:clean_architecture/features/number_trivia/data/models/number_trivia_model.dart';
import 'package:clean_architecture/features/number_trivia/domain/entities/number_trivia.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../../fixtures/fixture_reader.dart';

void main() {
  const tNumberTriviaModel = NumberTriviaModel(text: 'test text', number: 1);
  const tNumberTriviaModelToJson = {
    'text' : 'test text',
    'number': 1
  };

  group('Number trivia model class', () {
    test('NumberTriviaModel should be subclass of NumberTrivia😇', () {
      expect(tNumberTriviaModel, isA<NumberTrivia>());
    });

    test('should return a valid model from json', () async {
      final Map<String, dynamic> jsonMap = json.decode(fixture('trivia.json'));
      final result = NumberTriviaModel.fromJson(jsonMap);
      expect(result, tNumberTriviaModel);
    });

    test('should return a to json value from model', () {
      final Map<String, dynamic> toJson = tNumberTriviaModel.toJson();
      expect(toJson, tNumberTriviaModelToJson);
    });
  });
}
