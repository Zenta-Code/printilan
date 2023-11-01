import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:sky_printing/core/core.dart';

///*********************************************
/// Created by ukietux on 24/08/20 with ♥
/// (>’_’)> email : hey.mudassir@gmail.com
/// github : https://www.github.com/Lzyct <(’_’<)
///*********************************************
/// © 2020 | All Right Reserved
class SplashScreenPage extends StatefulWidget {
  @override
  _SplashScreenPageState createState() => _SplashScreenPageState();
}

class _SplashScreenPageState extends State<SplashScreenPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 2), () {
      context.goNamed(Routes.root.name);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Parent(
      child: ColoredBox(
        color: Theme.of(context).extension<LzyctColors>()!.background!,
        child: Center(
            // child: CircleAvatar(
            //   backgroundColor: Theme.of(context).hintColor,
            //   radius: Dimens.menu + Dimens.space6,
            //   child: CircleAvatar(
            //     backgroundImage: AssetImage(Images.icLogo),
            //     radius: Dimens.menu,
            //   ),
            // ),
            ),
      ),
    );
  }
}
