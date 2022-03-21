part of 'card_bloc.dart';

@freezed
abstract class CardEvent with _$CardEvent {
  const factory CardEvent.getCards() = GetCards;
  const factory CardEvent.setHolderName({required String value}) =
      SetHolderName;
  const factory CardEvent.setCardNumber({required String value}) =
      SetCardNumber;
  const factory CardEvent.setDate({required String value}) = SetDate;
  const factory CardEvent.setCVV({required String value}) = SetCVV;
  const factory CardEvent.addOrEdit() = AddOrEdit;
}
