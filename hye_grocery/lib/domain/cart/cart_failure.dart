import 'package:freezed_annotation/freezed_annotation.dart';
part 'cart_failure.freezed.dart';

@freezed
abstract class CartFailure with _$CartFailure {
  const factory CartFailure.unexpectedFailure() = UnexpectedFailure;
  const factory CartFailure.networkFailure() = NetworkFailure;
  const factory CartFailure.customFailure({required String failure}) =
      CustomFailure;
}
