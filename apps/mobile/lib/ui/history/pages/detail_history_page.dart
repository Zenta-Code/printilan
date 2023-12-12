import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

class DetailHistoryPage extends StatelessWidget {
  const DetailHistoryPage({
    super.key,
    required this.data,
  });
  final OrderEntityResponse data;

  @override
  Widget build(BuildContext context) {
    return Parent(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(40.h),
        child: AppBar(
          leading: IconButton(
            onPressed: () {
              context.pop();
            },
            icon: const Icon(Icons.arrow_back),
          ),
          title: Text("Detail History"),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 16.w),
              child: Text(
                "Store Information",
                style: Theme.of(context).textTheme.headline6!.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
            buildContainer(
              context,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Store Name :"),
                  Padding(
                    padding: EdgeInsets.only(left: 16.w),
                    child: Text(data.store!.name!),
                  ),
                  SizedBox(height: 8.h),
                  Text("Store Phone :"),
                  Padding(
                    padding: EdgeInsets.only(left: 16.w),
                    child: Text(data.store!.phone!),
                  ),
                  SizedBox(height: 8.h),
                  Text("Store Address :"),
                  Padding(
                    padding: EdgeInsets.only(left: 16.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Street : ${data.store!.address!.street}"),
                        Text("City : ${data.store!.address!.city}"),
                        Text("State : ${data.store!.address!.state}"),
                        Text("Country : ${data.store!.address!.country}"),
                        Text("Zip Code : ${data.store!.address!.zipCode}"),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.w),
              child: Text(
                "Order Information",
                style: Theme.of(context).textTheme.headline6!.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
            buildContainer(
              context,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Order ID :"),
                  Padding(
                    padding: EdgeInsets.only(left: 16.w),
                    child: Text(data.order!.id!),
                  ),
                  SizedBox(height: 8.h),
                  Text("Order Date :"),
                  Padding(
                    padding: EdgeInsets.only(left: 16.w),
                    child: Text(data.order!.createdAt!),
                  ),
                  SizedBox(height: 8.h),
                  Text("Order Status :"),
                  Padding(
                    padding: EdgeInsets.only(left: 16.w),
                    child: Text(data.order!.status!),
                  ),
                  SizedBox(height: 8.h),
                  Text("Order Total :"),
                  Padding(
                    padding: EdgeInsets.only(left: 16.w),
                    child: Text("Rp. ${data.order!.totalPrice}"),
                  ),
                  SizedBox(height: 8.h),
                  Text("Order Color :"),
                  Padding(
                    padding: EdgeInsets.only(left: 16.w),
                    child:
                        Text(data.order!.isColor == true ? "Color" : "Black"),
                  ),
                  SizedBox(height: 8.h),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 16.w),
              child: Text(
                "Document Information",
                style: Theme.of(context).textTheme.headline6!.copyWith(
                      fontWeight: FontWeight.w500,
                    ),
              ),
            ),
            buildContainer(
              context,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Document ID :"),
                  Padding(
                    padding: EdgeInsets.only(left: 16.w),
                    child: Text(data.document!.id!),
                  ),
                  SizedBox(height: 8.h),
                  Text("Document Name :"),
                  Padding(
                    padding: EdgeInsets.only(left: 16.w),
                    child: Text(data.document!.fileName!),
                  ),
                  SizedBox(height: 8.h),
                  Text("Document Type :"),
                  Padding(
                    padding: EdgeInsets.only(left: 16.w),
                    child: Text(data.document!.type!),
                  ),
                  SizedBox(height: 8.h),
                  Text("Document Size :"),
                  Padding(
                    padding: EdgeInsets.only(left: 16.w),
                    child: Text(int.parse(data.document!.size!) / 1000 > 1000
                        ? "${int.parse(data.document!.size!) / 1000000} MB"
                        : "${int.parse(data.document!.size!) / 1000} KB"),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget buildContainer(
    BuildContext context, {
    required Widget child,
  }) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.all(16.sp),
      margin: EdgeInsets.symmetric(horizontal: 16.w, vertical: 8.h),
      decoration: BoxDecoration(
        color: Theme.of(context).cardColor,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: child,
    );
  }
}
