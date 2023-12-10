import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sky_printing/ui/home/cubit/home_cubit.dart';
import 'package:sky_printing/ui/home/widgets/product_container.dart';
import 'package:sky_printing/ui/main/cubit/main_cubit.dart';
import 'package:sky_printing/ui/main/widgets/bottom_nav_bar.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () async {
        context.read<HomeCubit>().getLocation(const LocationParams());
      },
      child: Scaffold(
        bottomNavigationBar: BottomNavBar(
          dataMenu: context.read<MainCubit>().dataMenus,
          currentIndex: (int index) {
            context.read<MainCubit>().updateIndex(
                  index,
                );
          },
        ),
        body: BlocBuilder<HomeCubit, HomeState>(
          builder: (context, state) {
            return state.when(
              loading: () => const Center(
                child: Loading(),
              ),
              empty: () => const Center(
                child: Empty(),
              ),
              failure: (message) => Center(
                child: Empty(
                  errorMessage: message,
                ),
              ),
              success: (data, store, bundle, order) {
                return SingleChildScrollView(
                  physics: AlwaysScrollableScrollPhysics(),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: double.infinity,
                        color: Theme.of(context).extension<LzyctColors>()!.card,
                        padding: EdgeInsets.only(
                          top: Dimens.space46,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Padding(
                                  padding: EdgeInsets.only(left: 16.0),
                                  child: Icon(
                                    Icons.location_on,
                                    color: Colors.black,
                                    size: 42,
                                  ),
                                ),
                                const SizedBox(width: 8.0),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      Strings.of(context)!.your_location,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyMedium,
                                    ),
                                    Text(
                                      "${data.placemarks!.first.locality!.split(' ').last}, ${data.placemarks!.first.subAdministrativeArea!.split(' ').last}",
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodyLarge!
                                          .copyWith(
                                            fontSize: 16,
                                            fontWeight: FontWeight.bold,
                                          ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            SizedBox(height: Dimens.space16),
                            Container(
                              width: double.infinity,
                              decoration: BoxDecoration(
                                color: Colors.blue.withOpacity(0.3),
                                borderRadius: BorderRadius.circular(15.0),
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      Strings.of(context)!.last_activity,
                                      style: Theme.of(context)
                                          .textTheme
                                          .headlineSmall!
                                          .copyWith(
                                            fontSize: 24,
                                            fontWeight: FontWeight.w500,
                                          ),
                                    ),
                                    SizedBox(height: Dimens.space16),
                                    Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius:
                                            BorderRadius.circular(15.0),
                                      ),
                                      padding: EdgeInsets.symmetric(
                                          horizontal: Dimens.space16),
                                      height: 64.w,
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Row(
                                            children: [
                                              const Icon(
                                                Icons.print,
                                                color: Colors.black,
                                                size: 32,
                                              ),
                                              SizedBox(width: Dimens.space12),
                                              order.isNotEmpty
                                                  ? Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .center,
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .start,
                                                      children: [
                                                        Text(
                                                          order.last.bundle!
                                                                  .name ??
                                                              "",
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .labelLarge,
                                                        ),
                                                        Text(
                                                          order.last.document!
                                                                  .fileName ??
                                                              "",
                                                          style:
                                                              Theme.of(context)
                                                                  .textTheme
                                                                  .bodySmall,
                                                        ),
                                                      ],
                                                    )
                                                  : Text(Strings.of(context)!
                                                      .no_order_found),
                                            ],
                                          ),
                                          IconButton(
                                            onPressed: () {},
                                            icon: Container(
                                              padding: EdgeInsets.all(
                                                Dimens.space4,
                                              ),
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: Colors.grey,
                                                ),
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        Dimens.space8),
                                              ),
                                              child: const Icon(
                                                Icons.arrow_forward_ios,
                                              ),
                                            ),
                                          )
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: Dimens.space12,
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: Dimens.space24,
                        ),
                        child: Text(
                          Strings.of(context)!.our_services,
                          style: Theme.of(context)
                              .textTheme
                              .headlineSmall!
                              .copyWith(
                                fontSize: 24,
                                fontWeight: FontWeight.w500,
                              ),
                        ),
                      ),
                      SizedBox(
                        height: Dimens.space12,
                      ),
                      store!.isEmpty
                          ? buildNoServices()
                          : buildServices(context, data, store, bundle),
                    ],
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }

  Widget buildNoServices() {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.symmetric(
        horizontal: Dimens.space16,
        vertical: Dimens.space8,
      ),
      padding: EdgeInsets.symmetric(
        horizontal: Dimens.space16,
        vertical: Dimens.space12,
      ),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(Dimens.cornerRadius),
      ),
      child: Column(
        children: [
          Text(
            Strings.of(context)!.no_services,
            style: Theme.of(context).textTheme.labelLarge,
          ),
          SizedBox(
            height: Dimens.space4,
          ),
          Text(
            "${Strings.of(context)!.reason} : ${Strings.of(context)!.no_store_available}",
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SizedBox(
            height: Dimens.space4,
          ),
          Divider(),
          Row(
            children: [
              Text(
                "${Strings.of(context)!.hint} : ",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Text(
                Strings.of(context)!.try_refreshing_the_page,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              IconButton(
                onPressed: () async {
                  context.read<HomeCubit>().getLocation(const LocationParams());
                },
                icon: const Icon(Icons.refresh),
              )
            ],
          )
        ],
      ),
    );
  }

  Widget buildServices(
    BuildContext context,
    LocationEntity data,
    List<StoreEntity> store,
    List<BundleEntity> bundle,
  ) {
    return Column(
      children: [
        ProductContainer(
          name: "Regular Printing",
          bwPrice: bundle.map((e) => e.name).contains("Regular Printing")
              ? bundle
                  .firstWhere((e) => e.name == "Regular Printing")
                  .options!
                  .first
                  .price
              : 0,
          colorPrice: bundle.map((e) => e.name).contains("Regular Printing")
              ? bundle
                  .firstWhere((e) => e.name == "Regular Printing")
                  .options!
                  .last
                  .price
              : 0,
          placemarks: data.placemarks,
          store: store,
          bundle: bundle,
        ),
        ProductContainer(
          name: "Printing & Binding",
          bwPrice: bundle.map((e) => e.name).contains("Printing & Binding")
              ? bundle
                  .firstWhere((e) => e.name == "Printing & Binding")
                  .options!
                  .first
                  .price
              : 0,
          colorPrice: bundle.map((e) => e.name).contains("Printing & Binding")
              ? bundle
                  .firstWhere((e) => e.name == "Printing & Binding")
                  .options!
                  .last
                  .price
              : 0,
          placemarks: data.placemarks,
          store: store,
          bundle: bundle,
        ),
        // ProductContainer(
        //   name: "Photo Print",
        //   price: "5000",
        //   placemarks: data.placemarks,
        //   store: store,
        //   bundle: bundle,
        // ),
        SizedBox(height: Dimens.space16),
      ],
    );
  }
}
