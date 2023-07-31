import 'package:flutter/material.dart';

import '../../../core/theme/constant/app_colors.dart';
import '../../../core/theme/constant/app_icons.dart';
import '../../../core/theme/custom/custom_font_weight.dart';
import '../../../core/theme/custom/custom_theme.dart';

class UserPage extends StatelessWidget {
  const UserPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Padding(
        padding: EdgeInsets.symmetric(
          vertical: 60,
        ),
        child: Column(
          children: [
            Text(
              '''간편하게 로그인하고\n패캠마켓의\n다양한 서비스를 이용해보세요.''',
              style: Theme.of(context)
                  .textTheme
                  .headlineSmall
                  ?.copyWith(
                    color: Theme.of(context).colorScheme.contentPrimary,
                  )
                  .regular,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 24),
            SizedBox(
              height: 48,
              child: TextButton(
                onPressed: null,
                style: const ButtonStyle(
                  padding: MaterialStatePropertyAll<EdgeInsetsGeometry>(
                    EdgeInsets.zero,
                  ),
                ),
                child: Image.asset(
                  AppIcons.kakaoLogin,
                  width: double.infinity,
                  fit: BoxFit.fitWidth,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class UserProfile extends StatelessWidget {
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 32),
        child: Column(
          children: [
            ClipOval(
              child: Image.network(
                '',
                width: 110,
                height: 110,
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Text(
              '무명의 사용자',
              style: Theme.of(context)
                  .textTheme
                  .titleLarge
                  ?.copyWith(
                    color: AppColors.black,
                  )
                  .regular,
            ),
            const SizedBox(
              height: 24,
            ),
            Container(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: null,
                style: ButtonStyle(
                  backgroundColor: MaterialStatePropertyAll<Color>(
                    Theme.of(context).primaryColor,
                  ),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                    RoundedRectangleBorder(
                      borderRadius:
                          const BorderRadius.all(Radius.circular(8.0)),
                    ),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 12.0),
                  child: Text(
                    '로그아웃',
                    style: Theme.of(context)
                        .textTheme
                        .titleSmall
                        ?.copyWith(
                          color: AppColors.white,
                        )
                        .regular,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
