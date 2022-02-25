import "package:flutter/material.dart";

class CarouselMarker extends StatelessWidget {
  const CarouselMarker({
    Key? key,
    required this.currentPage,
    required this.itemCount,
  }) : super(key: key);
  final int currentPage;
  final int itemCount;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 24.0,
      child: ListView.builder(
          itemCount: itemCount,
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          primary: true,
          itemBuilder: (context, index) {
            if (index == currentPage) {
              return Container(
                height: 20.0,
                width: 20.0,
                margin: const EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(
                      color: Colors.white,
                    )),
                child: Container(
                  height: 10.0,
                  width: 10.0,
                  margin: const EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(5.0)),
                ),
              );
            } else {
              return Container(
                height: 20.0,
                width: 20.0,
                margin: const EdgeInsets.all(2.0),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    border: Border.all(color: Colors.transparent)),
                child: Container(
                  height: 10.0,
                  width: 10.0,
                  margin: const EdgeInsets.all(4.0),
                  decoration: BoxDecoration(
                      color: const Color(0xFFFFFFFF),
                      borderRadius: BorderRadius.circular(5.0)),
                ),
              );
            }
          }),
    );
  }
}
