import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hye_grocery/application/card/card_bloc.dart';
import 'package:hye_grocery/presentation/core/theme/colors.dart';
import 'package:hye_grocery/presentation/core/theme/dimensions.dart';
import 'package:hye_grocery/presentation/core/widgets/rect_button.dart';
import 'package:hye_grocery/presentation/onboarding/widgets/title_back_appbar.dart';
import 'package:hye_grocery/presentation/root/payment/widget/payment_card_tile.dart';
import 'package:hye_grocery/presentation/route/router.gr.dart';

class PaymentMethod extends StatefulWidget {
  const PaymentMethod({Key? key}) : super(key: key);

  @override
  State<PaymentMethod> createState() => _PaymentMethodState();
}

class _PaymentMethodState extends State<PaymentMethod> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
                margin: const EdgeInsets.only(bottom: 10.0),
                child: const TitleAppbar(title: "Payment method")),
            const PaymentCardForm(),
            const SizedBox(height: 10.0),
            Container(
                margin:
                    EdgeInsets.symmetric(horizontal: HDimensions.pageMargin),
                child: Theme(
                  data: ThemeData().copyWith(dividerColor: Colors.transparent),
                  child: BlocBuilder<CardBloc, CardState>(
                    builder: (context, state) {
                      String value = "cash_on_delivery";
                      return ExpansionTile(
                        initiallyExpanded:
                            state.paymentMethod == value ? true : false,
                        textColor: Colors.black,
                        iconColor: Colors.black,
                        title: const Text("Other payment methods"),
                        children: [
                          ListTile(
                            onTap: () => context
                                .read<CardBloc>()
                                .add(CardEvent.setPaymentMethod(value: value)),
                            leading: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(
                                  "assets/icons/money.png",
                                  width: 30.0,
                                ),
                              ],
                            ),
                            title: const Text("Cash on delivery"),
                            trailing: Radio(
                                activeColor: HColors.primaryColor,
                                value: value,
                                groupValue: state.paymentMethod,
                                onChanged: (value) => context
                                    .read<CardBloc>()
                                    .add(CardEvent.setPaymentMethod(
                                        value: value as String))),
                          )
                        ],
                      );
                    },
                  ),
                )),
          ],
        ),
      ),
    );
  }
}

class PaymentCardForm extends StatefulWidget {
  const PaymentCardForm({Key? key}) : super(key: key);

  @override
  State<PaymentCardForm> createState() => _PaymentCardFormState();
}

class _PaymentCardFormState extends State<PaymentCardForm> {
  @override
  void initState() {
    context.read<CardBloc>().add(const CardEvent.getCards());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CardBloc, CardState>(
      builder: (cardContext, cardState) {
        return Column(
          children: [
            cardState.allCards.isNotEmpty
                ? ListView.builder(
                    shrinkWrap: true,
                    itemCount: cardState.allCards.length,
                    itemBuilder: (_, index) {
                      var card = cardState.allCards[index];

                      return PaymentCardTile(
                        assetImage: card.cardNumber.toString().startsWith("5")
                            ? "assets/images/mastercard.png"
                            : "assets/images/visa.png",
                        cardNo: "**** **** **** " +
                            card.cardNumber.getOrCrash().substring(12),
                        groupValue: cardState.paymentMethod,
                        value: card.cardNumber.getOrCrash(),
                        onChanged: (value) => context.read<CardBloc>().add(
                            CardEvent.setPaymentMethod(
                                value: card.cardNumber.getOrCrash())),
                      );
                    },
                  )
                : const PaymentCardTile(
                    cardNo: "No card available",
                    groupValue: "groupValue",
                    value: "value",
                    showRadio: false),
            const SizedBox(height: 20.0),
            Container(
                margin:
                    EdgeInsets.symmetric(horizontal: HDimensions.pageMargin),
                child: RectButton(
                    text: "Add Card",
                    onTap: () => AutoRouter.of(context).push(const AddCard()))),
          ],
        );
      },
    );
  }
}
