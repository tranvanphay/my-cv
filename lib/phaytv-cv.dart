import 'package:flutter/material.dart';
import 'package:phaytvcv/config/app_dimens.dart';
import 'package:phaytvcv/widget/about_me.dart';
import 'package:phaytvcv/widget/header.dart';

class PhayTVCV extends StatefulWidget {
  const PhayTVCV({Key? key}) : super(key: key);

  @override
  State<PhayTVCV> createState() => _PhayTVCVState();
}

class _PhayTVCVState extends State<PhayTVCV> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          minimum: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: SingleChildScrollView(
            child: Center(
                child: Column(
              children: [
                CVHeader(
                  name: "Trần Văn Phây",
                  role: "Mobile Developer",
                  email: 'phay.tran99@gmail.com',
                  thisWeb: 'https://github.com/tranvanphay/my-cv.git',
                ),
                const SizedBox(
                  height: AppDimens.largestPadding,
                ),
                AboutMe(
                    introduce:
                        '"Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium doloremque laudantium, totam rem aperiam, eaque ipsa quae ab illo inventore veritatis et quasi architecto beatae vitae dicta sunt explicabo. Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit, sed quia non numquam eius modi tempora incidunt ut labore et dolore magnam aliquam quaerat voluptatem. Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur? Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur, vel illum qui dolorem eum fugiat quo voluptas nulla pariatur?"')
              ],
            )),
          )),
    );
  }
}
