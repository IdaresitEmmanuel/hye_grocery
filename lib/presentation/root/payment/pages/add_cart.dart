import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hye_grocery/application/card/card_bloc.dart';
import 'package:hye_grocery/presentation/core/theme/colors.dart';
import 'package:hye_grocery/presentation/core/theme/dimensions.dart';
import 'package:hye_grocery/presentation/core/widgets/rect_button.dart';
import 'package:hye_grocery/presentation/onboarding/widgets/title_back_appbar.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class AddCard extends StatefulWidget {
  const AddCard({Key? key}) : super(key: key);

  @override
  State<AddCard> createState() => _AddCardState();
}

class _AddCardState extends State<AddCard> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(children: [
              Container(
                  margin: const EdgeInsets.only(bottom: 10.0),
                  child: const TitleAppbar(title: "Add card")),
              Container(
                margin: EdgeInsets.symmetric(
                    horizontal: HDimensions.pageMargin, vertical: 10.0),
                constraints:
                    const BoxConstraints(maxWidth: 368, maxHeight: 160.0),
                decoration: BoxDecoration(
                    color: HColors.cardColor,
                    borderRadius: BorderRadius.circular(6)),
              ),
              const CardDetailForm(),
            ]),
          ),
        ),
      ),
    );
  }
}

class CardDetailForm extends StatefulWidget {
  const CardDetailForm({Key? key}) : super(key: key);

  @override
  State<CardDetailForm> createState() => _CardDetailFormState();
}

class _CardDetailFormState extends State<CardDetailForm> {
  var cardNoMask = MaskTextInputFormatter(
      mask: '#### #### #### ####', filter: {"#": RegExp(r'[0-9]')});
  var dateMask =
      MaskTextInputFormatter(mask: '##/##', filter: {"#": RegExp(r'[0-9]')});
  var cvvMask =
      MaskTextInputFormatter(mask: '####', filter: {"#": RegExp(r'[0-9]')});
  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CardBloc, CardState>(
      listener: (context, state) {
        state.addOrEditFailureOrSuccess.map((either) => either.fold(
                (failure) => ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text("card not added"))), (r) {
              context.read<CardBloc>().add(const CardEvent.getCards());
              ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text("card added successfully!")));
              AutoRouter.of(context).pop();
            }));
      },
      builder: (cardContext, cardState) {
        return Form(
            autovalidateMode: AutovalidateMode.always,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: HDimensions.pageMargin, vertical: 10.0),
                  child: const Text(
                    "Credit/Debit card",
                    style: TextStyle(fontSize: 18.0),
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: HDimensions.pageMargin),
                  child: TextFormField(
                    decoration: InputDecoration(
                        hintText: "Card holder's name ",
                        filled: true,
                        fillColor: HColors.cardColor),
                    onChanged: (value) => cardContext
                        .read<CardBloc>()
                        .add(CardEvent.setHolderName(value: value)),
                    validator: (_) => context
                        .read<CardBloc>()
                        .state
                        .editName
                        .value
                        .fold(
                            (failure) => failure.maybeMap(
                                orElse: () => null,
                                emptyCardName: (ecn) =>
                                    "This field cannot be empty"),
                            (r) => null),
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: HDimensions.pageMargin, vertical: 10.0),
                  child: TextFormField(
                    inputFormatters: [cardNoMask],
                    keyboardType: TextInputType.number,
                    decoration: InputDecoration(
                        hintText: "Enter card number",
                        filled: true,
                        fillColor: HColors.cardColor),
                    onChanged: (value) => cardContext.read<CardBloc>().add(
                        CardEvent.setCardNumber(
                            value: cardNoMask.getUnmaskedText())),
                    validator: (_) => context
                        .read<CardBloc>()
                        .state
                        .editCardNumber
                        .value
                        .fold((failure) => "Invalid card number", (r) => null),
                  ),
                ),
                Container(
                  margin:
                      EdgeInsets.symmetric(horizontal: HDimensions.pageMargin),
                  child: Row(
                    children: [
                      Flexible(
                        flex: 1,
                        child: Container(
                          margin: const EdgeInsets.only(right: 5.0),
                          child: TextFormField(
                            inputFormatters: [dateMask],
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                hintText: "MM/YY",
                                filled: true,
                                fillColor: HColors.cardColor),
                            onChanged: (value) => cardContext
                                .read<CardBloc>()
                                .add(CardEvent.setDate(value: value)),
                            validator: (_) => context
                                .read<CardBloc>()
                                .state
                                .editCardDate
                                .value
                                .fold(
                                    (failure) => failure.maybeMap(
                                        orElse: () => null,
                                        invalidCardDate: (ecn) =>
                                            "Invalid date"),
                                    (r) => null),
                          ),
                        ),
                      ),
                      Flexible(
                        flex: 1,
                        child: Container(
                          margin: const EdgeInsets.only(left: 5.0),
                          child: TextFormField(
                            inputFormatters: [cvvMask],
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                hintText: "CVV",
                                filled: true,
                                fillColor: HColors.cardColor),
                            onChanged: (value) => cardContext
                                .read<CardBloc>()
                                .add(CardEvent.setCVV(value: value)),
                            validator: (_) => context
                                .read<CardBloc>()
                                .state
                                .editCardCvv
                                .value
                                .fold(
                                    (failure) => failure.maybeMap(
                                        orElse: () => null,
                                        invalidCVV: (ic) => "Invalid CVV"),
                                    (r) => null),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  margin: EdgeInsets.symmetric(
                      horizontal: HDimensions.pageMargin, vertical: 20.0),
                  child: RectButton(
                      text: "Add",
                      onTap: () {
                        FocusScope.of(context).unfocus();
                        context
                            .read<CardBloc>()
                            .add(const CardEvent.addOrEdit());
                      }),
                )
              ],
            ));
      },
    );
  }
}
