import 'package:flutter/material.dart';
import '../constants.dart';
import '../demoData.dart';

class ImageCarousel extends StatefulWidget {
  const ImageCarousel({
    super.key,
  });

  @override
  State<ImageCarousel> createState() => _ImageCarouselState();
}

class _ImageCarouselState extends State<ImageCarousel> {
  int _currentPage = 0;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1.81,
      child: Stack(
          alignment: Alignment.bottomRight,
          children: [
            PageView.builder(
                itemCount: demoBigImages.length,
                onPageChanged: (value) {
                  setState((){
                    _currentPage = value;
                  });
                },
                // rounded images, but they may not be the same. Hmm, let's add a rounded shape!
                itemBuilder:
                    (context, index) =>
                    ClipRRect(
                      borderRadius: BorderRadius.all(Radius.circular(12)),
                      child: Image.asset(demoBigImages[index],
                      ),
                    )),
            Positioned(
                bottom: defaultPadding,
                right: defaultPadding,
                child: Row(children: List.generate
                  (demoBigImages.length, (index) =>
                    Padding(
                      padding: const EdgeInsets.only(left: defaultPadding/4),
                      child: IndicatorDot(isActive: index == _currentPage),
                    ),
                )))]
      ),);
  }
}


class IndicatorDot extends StatelessWidget {
  const IndicatorDot({
    super.key, required this.isActive,
  });
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 4,
        width: 8,
        decoration: BoxDecoration(
          color: isActive ? Colors.white : Colors.white38,
          borderRadius: BorderRadius.all(Radius.circular(12)),

        ));
  }
}
