import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocoding/geocoding.dart';
import 'package:go_router/go_router.dart';
import 'package:sky_printing/core/app_route.dart';
import 'package:sky_printing/ui/home/cubit/home_cubit.dart'; 
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _textCon = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Parent(
      child: RefreshIndicator(
        onRefresh: () async {
          context.read<HomeCubit>().getLocation(const LocationParams());
        },
        child: BlocBuilder<HomeCubit, HomeState>(
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
              success: (data) {
                return SingleChildScrollView(
                  child: Center(
                    child: Column(
                      mainAxisSize: MainAxisSize
                          .min, // Set mainAxisSize to minimize the vertical space
                      children: [
                        Container(
                          width: double.infinity,
                          color:
                              Theme.of(context).extension<LzyctColors>()!.card,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                  height: Dimens
                                      .space36), // Add some space at the top
                              Row(
                                children: [
                                  const Padding(
                                    padding: EdgeInsets.only(left: 16.0),
                                    child: Icon(
                                      Icons.location_on,
                                      color: Colors
                                          .black, // Change color as needed
                                    ),
                                  ),
                                  const SizedBox(width: 8.0),
                                  Text(
                                    Strings.of(context)!.location,
                                    style:
                                        Theme.of(context).textTheme.bodyMedium,
                                  ),
                                ],
                              ),
                              Text(
                                " ${data.placemarks!.first.locality!.split(' ').last}, ${data.placemarks!.first.subAdministrativeArea!.split(' ').last}",
                                style: Theme.of(context).textTheme.bodyMedium,
                              ),
                              SizedBox(
                                  height: Dimens
                                      .space16), // Add some space at the bottom
                            ],
                          ),
                        ),
                        Container(
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.blue.withOpacity(0.3),
                            borderRadius: BorderRadius.circular(
                                15.0), // Set the border radius
                          ),
                          child: Padding(
                            padding: const EdgeInsets.all(15.0),
                            child: Column(
                              children: [
                                Row(
                                  children: [
                                    const SizedBox(width: 8.0),
                                    Text(
                                      "Last Activity",
                                      style:
                                          Theme.of(context).textTheme.bodyLarge,
                                    ),
                                  ],
                                ),
                                SizedBox(height: Dimens.space16),
                                Container(
                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(15.0),
                                  ),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding: EdgeInsets.only(left: 15.0),
                                        child: Icon(
                                          Icons.print,
                                          color: Colors
                                              .black, // Change color as needed
                                        ),
                                      ),
                                      const SizedBox(width: 8.0),
                                      Text(
                                        "Print",
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: Dimens.space16),
                        _buildContainer(
                          title: 'Reqular printing',
                          price: '500',
                          placemarks: data.placemarks!,
                        ),
                        SizedBox(height: Dimens.space16),
                        _buildContainer(
                          title: 'Printing and binding',
                          price: '700',
                          placemarks: data.placemarks!,
                        ),
                        SizedBox(height: Dimens.space16),
                        _buildContainer(
                          title: 'Photo Print',
                          price: '5000',
                          placemarks: data.placemarks!,
                        ),
                      ],
                    ),
                  ),
                );
              },
            );
          },
        ),
      ),
    );
  }

  Widget _buildContainer(
      {required String title,
      required String price,
      required List<Placemark> placemarks}) {
    return InkWell(
      onTap: () {
        context.pushNamed(
          Routes.order.name,
          extra: {
            "title": title,
            "price": price,
            "placemarks": placemarks,
          },
        );
      },
      child: Container(
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(15.0),
        ),
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: Dimens.space16),
              Text(
                title,
                style: Theme.of(context).textTheme.bodyMedium,
              ),
              Text(
                "Start from",
                style: Theme.of(context).textTheme.bodySmall,
              ),
              Text(
                "Rp.$price / paper",
                style: Theme.of(context).textTheme.bodyMedium,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
