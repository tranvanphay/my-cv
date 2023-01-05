import 'package:flutter/material.dart';
import 'package:phaytvcv/config/app_color.dart';
import 'package:phaytvcv/config/app_dimens.dart';
import 'package:phaytvcv/config/app_image.dart';
import 'package:phaytvcv/widget/dotted_divider.dart';

class AboutMe extends StatelessWidget {
  final String introduce;
  AboutMe({required this.introduce});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          'About Me',
          style: TextStyle(
              color: AppColor.textGrey, fontSize: AppDimens.fontSizeName),
        ),
        const DottedDivider(
          color: AppColor.textGrey,
          height: 2,
        ),
        Row(
          children: [
            Expanded(
                flex: 1,
                child: Image.asset(
                  AppImage.icGithub,
                  width: 100,
                )),
            Expanded(flex: 4, child: Text(introduce))
          ],
        )
      ],
    );
  }
}
