import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:geocoding/geocoding.dart';
import 'package:go_router/go_router.dart';
import 'package:sky_printing/core/app_route.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

class ProductContainer extends StatelessWidget {
  const ProductContainer({
    super.key,
    this.name,
    this.bwPrice,
    this.colorPrice,
    this.placemarks,
    this.store,
    this.bundle,
  });
  final String? name;
  final int? bwPrice;
  final int? colorPrice;
  final List<Placemark>? placemarks;
  final List<StoreEntity>? store;
  final List<BundleEntity>? bundle;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.pushNamed(
        Routes.order.name,
        extra: {
          "name": name,
          "prices": {
            "bw": bwPrice,
            "color": colorPrice,
          },
          "placemarks": placemarks,
          "store": store,
          "bundle": bundle,
        },
      ),
      child: Container(
        margin: EdgeInsets.symmetric(
          horizontal: Dimens.space16,
          vertical: Dimens.space8,
        ),
        padding: EdgeInsets.symmetric(
          horizontal: Dimens.space16,
          vertical: Dimens.space12,
        ),
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(Dimens.cornerRadius),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name.toString(),
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                SizedBox(
                  height: Dimens.space4,
                ),
                Text(
                  "${Strings.of(context)!.black_and_white} :",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                Row(
                  children: [
                    Text("Rp. ",
                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                              color: Colors.black,
                            )),
                    Text(
                      bwPrice.toString(),
                      style: Theme.of(context).textTheme.labelLarge!.copyWith(
                            color: Colors.black,
                          ),
                    ),
                    Text(" / ${Strings.of(context)!.paper.toLowerCase()}",
                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                              color: Colors.black,
                            )),
                  ],
                ),
                SizedBox(
                  height: Dimens.space4,
                ),
                Text(
                  "${Strings.of(context)!.color} :",
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                Row(
                  children: [
                    Text("Rp. ",
                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                              color: Colors.black,
                            )),
                    ShaderMask(
                      blendMode: BlendMode.srcIn,
                      shaderCallback: (bounds) => LinearGradient(colors: [
                        Colors.red,
                        Colors.pink,
                        Colors.purple,
                        Colors.deepPurple,
                        Colors.deepPurple,
                        Colors.indigo,
                        Colors.blue,
                        Colors.teal,
                        Colors.green,
                        Colors.lightGreen,
                        Colors.amber,
                        Colors.orange,
                        Colors.deepOrange,
                      ]).createShader(
                        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
                      ),
                      child: Text(
                        colorPrice.toString(),
                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                              color: Colors.black,
                            ),
                      ),
                    ),
                    Text(" / ${Strings.of(context)!.paper.toLowerCase()}",
                        style: Theme.of(context).textTheme.labelLarge!.copyWith(
                              color: Colors.black,
                            )),
                  ],
                ),
              ],
            ),
            SvgPicture.asset('assets/images/printer.svg')
          ],
        ),
      ),
    );
  }
}
