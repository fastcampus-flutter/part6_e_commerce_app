import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../../../../core/theme/constant/app_icons.dart';
import '../../../../../core/theme/custom/custom_font_weight.dart';
import '../../../../../core/theme/custom/custom_theme.dart';
import '../../../../../domain/model/display/display.model.dart';
import 'factory/view_module_widget.dart';
import 'widget/view_module_padding.dart';
import 'widget/view_module_title.dart';

class BrandProductViewModule extends StatelessWidget with ViewModuleWidget {
  final ViewModule info;

  const BrandProductViewModule({
    Key? key,
    required this.info,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return ViewModulePadding(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ViewModuleTitle(
            title: info.title,
          ),
          SizedBox(
            height: 8,
          ),
          if (info.imageUrl.isNotEmpty)
            Padding(
              padding: EdgeInsets.only(bottom: 13),
              child: AspectRatio(
                aspectRatio: 343 / 173,
                child: Image.network(
                  info.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          if (info.subtitle.isNotEmpty)
            Padding(
              padding: EdgeInsets.only(
                bottom: 16,
              ),
              child: Text(
                info.subtitle,
                style: Theme.of(context)
                    .textTheme
                    .titleSmall
                    ?.copyWith(
                      color: colorScheme.contentSecondary,
                    )
                    .regular,
              ),
            ),
          Divider(
            thickness: 1,
            color: colorScheme.outline,
          ),
          SizedBox(
            height: 16,
          ),
          ListView.separated(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemBuilder: (_, index) {
              /////////////////////////////////////
              ///////////// 상품영역 //////////////
              /////////////////////////////////////
              return Container();
            },
            separatorBuilder: (_, __) {
              return const SizedBox(
                height: 8,
              );
            },
            itemCount: info.products.length,
          ),
          SizedBox(
            height: 8,
          ),
          Container(
            decoration: BoxDecoration(
              color: colorScheme.surface,
              borderRadius: BorderRadius.all(
                Radius.circular(10),
              ),
            ),
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 12,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '전체보기',
                    style: textTheme.titleSmall
                        ?.copyWith(
                          color: colorScheme.contentPrimary,
                        )
                        .regular,
                  ),
                  SvgPicture.asset(
                    AppIcons.chevronRight,
                    width: 16,
                    height: 16,
                    colorFilter: ColorFilter.mode(
                      colorScheme.contentPrimary,
                      BlendMode.srcIn,
                    ),
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 16,
          ),
        ],
      ),
    );
  }
}
