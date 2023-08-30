import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../theme/constant/app_colors.dart';

const List<String> sampleImages = [
  'https://images.unsplash.com/photo-1560008581-09826d1de69e?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1344&q=80',
  'https://images.unsplash.com/photo-1568724001336-2101ca2a0d8b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1291&q=80',
  'https://images.unsplash.com/photo-1594969155368-f19485a9d88c?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
  'https://images.unsplash.com/photo-1483985988355-763728e1935b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
  'https://images.unsplash.com/photo-1607083206968-13611e3d76db?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1215&q=80',
  'https://images.unsplash.com/photo-1571875257727-256c39da42af?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1160&q=80',
];

class CommonImage extends StatelessWidget {
  const CommonImage(
    this.imageUrl, {
    this.height,
    this.width,
    this.fit = BoxFit.cover,
    super.key,
  });

  final imageUrl;
  final double? width;
  final double? height;
  final BoxFit fit;

  @override
  Widget build(BuildContext context) {
    return CachedNetworkImage(
      imageUrl: imageUrl,
      placeholder: (context, url) => ColoredBox(color: AppColors.contentFourth),
      errorWidget: (context, url, error) => Center(
        child: ColoredBox(
          color: AppColors.contentFourth,
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Icon(Icons.error), Text('no Image')],
            ),
          ),
        ),
      ),
      fadeOutDuration: Duration(milliseconds: 600),
      fadeInDuration: Duration(milliseconds: 600),
      width: width,
      height: height,
      fit: fit,
      cacheKey: imageUrl,
    );
  }
}
