import 'package:flutter/material.dart';

import 'placeholders.dart';

class HomePlaceholder extends StatelessWidget {
  const HomePlaceholder({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      children: [
        ShimmerFromColors(
          child: CarouselPlaceholder(),
        ),
        SizedBox(
          height: 20,
        ),
        ShimmerFromColors(
          child: ContentPlaceholder(
            lineType: ContentLineType.twoLines,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        ShimmerFromColors(
          child: BannerPlaceholder(),
        ),
        SizedBox(
          height: 20,
        ),
        ShimmerFromColors(
          child: ContentPlaceholder(
            lineType: ContentLineType.threeLines,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        ShimmerFromColors(
          child: ContentPlaceholder(
            lineType: ContentLineType.twoLines,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        ShimmerFromColors(
          child: ContentPlaceholder(
            lineType: ContentLineType.threeLines,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        ShimmerFromColors(
          child: ContentPlaceholder(
            lineType: ContentLineType.twoLines,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        ShimmerFromColors(
          child: ContentPlaceholder(
            lineType: ContentLineType.threeLines,
          ),
        ),
        SizedBox(
          height: 20,
        ),
      ],
    );
  }
}
