import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hye_grocery/domain/card/card.dart';
import 'package:hye_grocery/domain/card/card_failure.dart';
import 'package:hye_grocery/domain/card/i_card_facade.dart';
import 'package:hye_grocery/domain/card/value_field_objects.dart';
import 'package:injectable/injectable.dart';

part 'card_bloc.freezed.dart';
part 'card_event.dart';
part 'card_state.dart';

@injectable
class CardBloc extends Bloc<CardEvent, CardState> {
  final ICardFacade _iCardFacade;
  CardBloc(this._iCardFacade) : super(CardState.initial());

  @override
  Stream<CardState> mapEventToState(CardEvent event) async* {
    yield* event.map(getCards: (event) async* {
      final result = await _iCardFacade.getAllCards();
      yield result.fold((l) => state.copyWith(),
          (allCards) => state.copyWith(allCards: allCards));
    }, setHolderName: (event) async* {
      yield state.copyWith(editName: CardName(event.value));
    }, setCardNumber: (event) async* {
      yield state.copyWith(editCardNumber: CardNumber(event.value));
    }, setDate: (event) async* {
      yield state.copyWith(editCardDate: CardDate(''));
    }, setCVV: (event) async* {
      yield state.copyWith(editCardCvv: CardCVV(''));
    }, addOrEdit: (event) async* {
      final result = await _iCardFacade.addOrEditCard(
          name: state.editName,
          cardNumber: state.editCardNumber,
          date: state.editCardDate,
          cvv: state.editCardCvv);
      yield state.copyWith(addOrEditFailureOrSuccess: some(result));
      yield state.copyWith(addOrEditFailureOrSuccess: none());
    });
  }
}
