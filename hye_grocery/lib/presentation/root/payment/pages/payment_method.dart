import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
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
                  child: ExpansionTile(
                    textColor: Colors.black,
                    iconColor: Colors.black,
                    title: const Text("Other payment methods"),
                    children: [
                      ListTile(
                        leading: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Image.asset(
                              "assets/icons/money.png",
                              width: 30.0,
                            ),
                          ],
                        ),
                        title: const Text("Cash on delivey"),
                        trailing: Radio(
                            value: 7, groupValue: 8, onChanged: (value) {}),
                      )
                    ],
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
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView(
          shrinkWrap: true,
          children: const [
            PaymentCardTile(
                assetImage: "assets/images/visa.png",
                cardNo: "**** **** **** 3245",
                groupValue: 4,
                value: 5),
            PaymentCardTile(
                assetImage: "assets/images/mastercard.png",
                cardNo: "**** **** **** 7483",
                groupValue: 4,
                value: 4)
          ],
        ),
        const SizedBox(height: 20.0),
        Container(
            margin: EdgeInsets.symmetric(horizontal: HDimensions.pageMargin),
            child: RectButton(
                text: "Add Card",
                onTap: () => AutoRouter.of(context).push(const AddCard()))),
      ],
    );
  }
}
