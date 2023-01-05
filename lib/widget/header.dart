import 'package:flutter/material.dart';
import 'package:phaytvcv/config/app_color.dart';
import 'package:phaytvcv/config/app_dimens.dart';
import 'package:phaytvcv/config/app_image.dart';

class CVHeader extends StatelessWidget {
  final String name;
  final String role;
  final String email;
  final String thisWeb;
  const CVHeader(
      {required this.name,
      required this.role,
      required this.email,
      required this.thisWeb});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              name,
              style: _headerTextStyle(
                  fontSize: AppDimens.fontSizeName,
                  textColor: AppColor.textBlack,
                  fontWeight: FontWeight.w700),
            ),
            const SizedBox(
              height: AppDimens.normalPadding,
            ),
            Text(
              role,
              style: _headerTextStyle(
                  fontSize: AppDimens.fontSizeRole,
                  textColor: AppColor.textGrey),
            )
          ],
        )),
        Expanded(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Image.asset(
                  AppImage.icGithub,
                  width: 50,
                ),
                Image.asset(
                  AppImage.icLinkedIn,
                  width: 50,
                )
              ],
            ),
            const SizedBox(
              height: AppDimens.largePadding,
            ),
            Text('Emal: $email'),
            const SizedBox(
              height: AppDimens.smallPadding,
            ),
            Text('Web repo: $thisWeb'),
          ],
        ))
      ],
    );
  }

  TextStyle _headerTextStyle(
      {required double fontSize,
      required Color textColor,
      FontWeight? fontWeight}) {
    return TextStyle(
        fontSize: fontSize, color: textColor, fontWeight: fontWeight);
  }
}
