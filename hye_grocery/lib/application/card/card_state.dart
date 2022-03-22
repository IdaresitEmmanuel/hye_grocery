part of 'card_bloc.dart';

@freezed
abstract class CardState with _$CardState {
  const factory CardState({
    required List<Card> allCards,
    required CardName editName,
    required CardNumber editCardNumber,
    required CardDate editCardDate,
    required CVV editCardCvv,
    required Option<Either<CardFailure, Unit>> addOrEditFailureOrSuccess,
    required String paymentMethod,
  }) = _CardState;

  factory CardState.initial() => CardState(
        allCards: [],
        editName: CardName(''),
        editCardNumber: CardNumber(''),
        editCardDate: CardDate(''),
        editCardCvv: CVV(''),
        addOrEditFailureOrSuccess: none(),
        paymentMethod: "",
      );
}
