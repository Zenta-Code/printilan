import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:sky_printing/core/core.dart';
import 'package:sky_printing/utils/helper/constant.dart';

class SplashScreenPage extends StatelessWidget {
  const SplashScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Parent(
      child: Container(
        padding: EdgeInsets.symmetric(
          vertical: 32.h,
          horizontal: 24.w,
        ),
        color: Color.fromARGB(255, 235, 244, 253),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  SizedBox(height: Dimens.space30),
                  Text(
                    Strings.of(context)!.welcomeTo,
                    style: Theme.of(context).textTheme.headlineSmall!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                  Text(
                    Constants.get.appName,
                    style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ],
              ),
              Image.asset(
                'assets/images/greeting.png',
                width: 320,
              ),
              ButtonText(
                onPressed: () => context.pushNamed(Routes.login.name),
                title: Strings.of(context)!.getStarted,
                color: Colors.black,
                fontSize: Dimens.titleLarge,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
