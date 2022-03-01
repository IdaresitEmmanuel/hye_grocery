import 'package:auto_route/auto_route.dart';
import "package:flutter/material.dart";
import 'package:hye_grocery/presentation/onboarding/widgets/carousel_marker.dart';
import 'package:hye_grocery/presentation/onboarding/widgets/rect_button.dart';
import 'package:hye_grocery/presentation/route/router.gr.dart';

class GettingStarted extends StatefulWidget {
  const GettingStarted({Key? key}) : super(key: key);

  @override
  GettingStartedState createState() => GettingStartedState();
}

class GettingStartedState extends State<GettingStarted> {
  ValueNotifier<int> currentPosNotifier = ValueNotifier<int>(0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Stack(
          children: [
            PageView.builder(
                onPageChanged: (index) {
                  currentPosNotifier.value = index;
                },
                itemCount: imagePaths.length,
                itemBuilder: (context, index) {
                  return Stack(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                            backgroundBlendMode: BlendMode.darken,
                            color: Colors.black,
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: Image.asset(imagePaths[index]).image)),
                      ),
                      Container(
                        padding: const EdgeInsets.symmetric(horizontal: 20.0),
                        decoration: BoxDecoration(
                          color: Colors.black.withOpacity(0.55),
                        ),
                        child: Column(
                          children: [
                            Container(
                              padding: const EdgeInsets.only(top: 80.0),
                              child: Image.asset(
                                "assets/images/logo.png",
                                width: 40.0,
                              ),
                            ),
                            Expanded(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  const SizedBox(height: 30.0),
                                  Text(captions[index],
                                      textAlign: TextAlign.center,
                                      style: Theme.of(context)
                                          .primaryTextTheme
                                          .bodyLarge!
                                          .copyWith(
                                              fontWeight: FontWeight.w400,
                                              color: Colors.white)),
                                  const SizedBox(height: 40.0),
                                  RectButton(
                                      text: "Get Started",
                                      onTap: () {
                                        AutoRouter.of(context)
                                            .push(const SignIn());
                                      }),
                                  const SizedBox(height: 60.0),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                }),
            ValueListenableBuilder(
                valueListenable: currentPosNotifier,
                builder: (context, int index, child) {
                  return Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: const EdgeInsets.only(bottom: 20.0),
                      child: CarouselMarker(currentPage: index, itemCount: 3),
                    ),
                  );
                })
          ],
        ));
  }
}

List<String> imagePaths = [
  "assets/images/chilli_pepper.jpg",
  "assets/images/fruit_basket.jpg",
  "assets/images/shopping.jpg"
];

List<String> captions = [
  "Purchase your good quality groceries at pocket friendly prices",
  "Get 20% discount at you first purchase, and plenty of free gifts along the way",
  "Cheap delivery to your home, and free delivery for places withing Uyo"
];
