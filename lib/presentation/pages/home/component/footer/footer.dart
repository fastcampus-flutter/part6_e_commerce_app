import 'package:flutter/material.dart';

import '../../../../../core/theme/constant/app_icons.dart';
import '../../../../../core/theme/custom/custom_font_weight.dart';
import '../../../../../core/theme/custom/custom_theme.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Container(
      color: colorScheme.surface,
      margin: EdgeInsets.only(top: 40),
      child: Padding(
        padding: EdgeInsets.only(top: 40, bottom: 100).add(
          EdgeInsets.symmetric(
            horizontal: 20,
          ),
        ),
        child: Column(
          children: [
            Row(
              children: [
                _GreyInfo(
                  '회사 소개',
                  isBold: true,
                ),
                const SizedBox(
                  width: 20,
                ),
                _GreyInfo(
                  '이용 약관',
                  isBold: true,
                ),
                const SizedBox(
                  width: 20,
                ),
                _GreyInfo(
                  '개인정보처리방침',
                  isBold: true,
                ),
              ],
            ),
            const SizedBox(
              height: 16,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    _GreyInfo(
                      '주식회사 패캠마켓',
                    ),
                    Container(
                      height: 10,
                      child: VerticalDivider(
                        color: colorScheme.contentTertiary,
                      ),
                    ),
                    _GreyInfo(
                      '대표자 : 김플러터',
                    ),
                  ],
                ),
                SizedBox(
                  height: 4,
                ),
                _GreyInfo(
                  '개인정보보호책임자 : 박타트',
                ),
                SizedBox(
                  height: 4,
                ),
                Row(
                  children: [
                    _GreyInfo(
                      '사업자등록번호 : 111-22-3333',
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    _HighlightInfo('사업자 정보 확인'),
                  ],
                ),
                SizedBox(
                  height: 4,
                ),
                _GreyInfo(
                  '통신판매업 : 제 2023-서울강남-12345 호',
                ),
                SizedBox(
                  height: 4,
                ),
                _GreyInfo(
                  '주소 : 서울특별시 강남구 테헤란로 123456',
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  children: [
                    _GreyInfo('입점문의 : '),
                    _HighlightInfo('입점문의하기'),
                  ],
                ),
                SizedBox(
                  height: 4,
                ),
                Row(children: [
                  _GreyInfo('제휴문의 : '),
                  _HighlightInfo('facammarket@facammarket.com'),
                ]),
                SizedBox(
                  height: 4,
                ),
                Wrap(
                  runSpacing: 4,
                  children: [
                    _GreyInfo('팩스 : 111-222-3333'),
                    Container(
                      height: 10,
                      child: VerticalDivider(
                        color: colorScheme.contentTertiary,
                      ),
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _GreyInfo('이메일 : '),
                        _HighlightInfo('fastcampus@fast.com'),
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  height: 4,
                ),
                Row(children: [
                  _GreyInfo('고객 센터 : '),
                  _HighlightInfo('1234-5678'),
                ]),
                SizedBox(
                  height: 4,
                ),
                Row(children: [
                  _GreyInfo('대량주문 문의 : '),
                  _HighlightInfo('대량주문 문의하기'),
                ]),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Row(
              children: [
                _SnsIcon(
                  icon: AppIcons.instagram,
                ),
                _SnsIcon(
                  icon: AppIcons.fb,
                ),
                _SnsIcon(
                  icon: AppIcons.blog,
                ),
                _SnsIcon(
                  icon: AppIcons.naverpost,
                ),
                _SnsIcon(
                  icon: AppIcons.youtube,
                ),
              ],
            ),
            SizedBox(
              height: 16,
            ),
            Text(
              '패캠마켓에서 판매되는 상품 중에는 패캠마켓에 입점한 개별 판매자가 판매하는 마켓플레이스(오픈마켓) 상품이 포함되어 있습니다. 마켓플레이스(오픈마켓) 상품의 경우 컬리는 통신판매중개자로서 통신판매의 당사자가 아닙니다. 패캠마켓은 해당 상품의 주문, 품질, 교환/환불 등 의무와 책임을 부담하지 않습니다.',
              style: Theme.of(context)
                  .textTheme
                  .labelSmall
                  ?.copyWith(
                    color: Theme.of(context).colorScheme.contentTertiary,
                  )
                  .regular,
            ),
          ],
        ),
      ),
    );
  }
}

class _GreyInfo extends StatelessWidget {
  final String text;
  final bool isBold;

  const _GreyInfo(
    this.text, {
    Key? key,
    this.isBold = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textStyle = Theme.of(context).textTheme.labelMedium?.copyWith(
          color: Theme.of(context).colorScheme.contentTertiary,
        );

    textStyle = isBold ? textStyle.bold : textStyle.regular;

    return Text(
      text,
      style: textStyle,
    );
  }
}

class _HighlightInfo extends StatelessWidget {
  final String text;

  const _HighlightInfo(
    this.text, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var textStyle = Theme.of(context)
        .textTheme
        .labelMedium
        ?.copyWith(
          color: Theme.of(context).colorScheme.primary,
        )
        .regular;

    return Text(
      text,
      style: textStyle,
    );
  }
}

class _SnsIcon extends StatelessWidget {
  final String icon;

  const _SnsIcon({Key? key, required this.icon}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Image.asset(
        icon,
        width: 25,
        height: 25,
      ),
    );
  }
}
