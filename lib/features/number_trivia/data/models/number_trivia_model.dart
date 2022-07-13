import 'package:clean_architecture/features/number_trivia/domain/entities/number_trivia.dart';

class NumberTriviaModel extends NumberTrivia {
  const NumberTriviaModel({required super.text, required super.number});

  factory NumberTriviaModel.fromJson(Map<String, dynamic> json) {
    return NumberTriviaModel(
        text: json['text'], number: json['number'].toInt());
  }

  Map<String, dynamic> toJson() => {'number': number, 'text': text};
}
