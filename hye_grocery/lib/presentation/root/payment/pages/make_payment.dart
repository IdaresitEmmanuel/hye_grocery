import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hye_grocery/presentation/core/theme/colors.dart';
import 'package:hye_grocery/presentation/core/theme/dimensions.dart';
import 'package:hye_grocery/presentation/core/widgets/rect_button.dart';
import 'package:hye_grocery/presentation/onboarding/widgets/title_back_appbar.dart';
import 'package:hye_grocery/presentation/root/payment/widget/make_payment_tile.dart';
import 'package:hye_grocery/presentation/route/router.gr.dart';

class MakePayment extends StatefulWidget {
  const MakePayment({Key? key}) : super(key: key);

  @override
  State<MakePayment> createState() => _MakePaymentState();
}

class _MakePaymentState extends State<MakePayment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Container(
                margin: const EdgeInsets.only(bottom: 10.0),
                child: const TitleAppbar(title: "Make payment")),
            const MakePaymentForm(),
            const SizedBox(height: 10.0),
            const SumTotal(),
            const SizedBox(height: 20.0),
            Container(
                margin:
                    EdgeInsets.symmetric(horizontal: HDimensions.pageMargin),
                child: RectButton(text: "Place order", onTap: () {})),
          ],
        ),
      ),
    );
  }
}

class MakePaymentForm extends StatefulWidget {
  const MakePaymentForm({Key? key}) : super(key: key);

  @override
  State<MakePaymentForm> createState() => _MakePaymentFormState();
}

class _MakePaymentFormState extends State<MakePaymentForm> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListView(
          shrinkWrap: true,
          children: [
            Container(
                padding: EdgeInsets.symmetric(
                    horizontal: HDimensions.pageMargin, vertical: 5.0),
                child: const Text("Payment method",
                    style: TextStyle(fontSize: 16.0))),
            GestureDetector(
              onTap: () => AutoRouter.of(context).push(const PaymentMethod()),
              child: const MakePaymentTile(
                  assetImage: "assets/images/visa.png",
                  cardNo: "**** **** **** 1049",
                  groupValue: 4,
                  value: 5),
            ),
            Container(
                padding: EdgeInsets.symmetric(
                    horizontal: HDimensions.pageMargin, vertical: 5.0),
                child: const Text("Your location",
                    style: TextStyle(fontSize: 16.0))),
            const MakePaymentTile(
                assetImage: "assets/icons/location_point.png",
                cardNo: "Railway Road Str.",
                leftPush: 20.0,
                imageWidth: 24.0,
                groupValue: 4,
                value: 4)
          ],
        ),
      ],
    );
  }
}

class SumTotal extends StatefulWidget {
  const SumTotal({Key? key}) : super(key: key);

  @override
  State<SumTotal> createState() => _SumTotalState();
}

class _SumTotalState extends State<SumTotal> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: HDimensions.pageMargin),
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Grocer price:",
                style: TextStyle(fontSize: 20.0, color: HColors.captionColor)),
            Text("\$400",
                style: TextStyle(fontSize: 20.0, color: HColors.captionColor)),
          ],
        ),
        const SizedBox(height: 10.0),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Delivery fee:",
                style: TextStyle(fontSize: 20.0, color: HColors.captionColor)),
            Text("\$15",
                style: TextStyle(fontSize: 20.0, color: HColors.captionColor)),
          ],
        ),
        const Divider(),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("Total:",
                style: TextStyle(fontSize: 20.0, color: HColors.captionColor)),
            Text("\$415",
                style: TextStyle(fontSize: 20.0, color: HColors.captionColor)),
          ],
        )
      ]),
    );
  }
}
