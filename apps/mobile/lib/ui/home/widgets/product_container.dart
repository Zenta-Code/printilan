import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:geocoding/geocoding.dart';
import 'package:go_router/go_router.dart';
import 'package:sky_printing/core/app_route.dart';
import 'package:sky_printing_core/sky_printing_core.dart';

class ProductContainer extends StatelessWidget {
  const ProductContainer({
    super.key,
    this.name,
    this.price,
    this.placemarks,
  });
  final String? name;
  final String? price;
  final List<Placemark>? placemarks;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => context.pushNamed(
        Routes.order.name,
        extra: {
          "title": name,
          "price": price,
          "placemarks": placemarks,
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
                  name ?? "",
                  style: Theme.of(context).textTheme.labelLarge,
                ),
                SizedBox(
                  height: Dimens.space4,
                ),
                Text(
                  Strings.of(context)!.start_from,
                  style: Theme.of(context).textTheme.bodySmall,
                ),
                SizedBox(
                  height: Dimens.space4,
                ),
                Text(
                  "Rp. $price / ${Strings.of(context)!.paper}",
                  style: Theme.of(context).textTheme.labelLarge!.copyWith(
                        color: Colors.blue,
                      ),
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
