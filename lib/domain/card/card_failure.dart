import 'package:freezed_annotation/freezed_annotation.dart';

part 'card_failure.freezed.dart';

@freezed
abstract class CardFailure with _$CardFailure {
  const factory CardFailure.unexpectedFailure() = UnexpectedFailure;
}
