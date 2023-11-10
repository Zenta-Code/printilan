import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sky_printing/core/core.dart';
import 'package:sky_printing/modules/dashboard/domain/usecases/get_location.dart';
import 'package:sky_printing/modules/dashboard/ui/cubit/dashboard_cubit.dart';
import 'package:sky_printing/utils/ext/ext.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({Key? key}) : super(key: key);

  @override
  State<DashboardPage> createState() => _DashboardPageState();
}

class _DashboardPageState extends State<DashboardPage> {
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
          context.read<DashboardCubit>().getLocation(LocationParams());
        },
        child: BlocBuilder<DashboardCubit, DashboardState>(
          builder: (context, state) {
            return state.when(
              loading: () => Center(
                child: Loading(),
              ),
              empty: () => Center(
                child: Empty(),
              ),
              failure: (message) => Center(
                child: Empty(
                  errorMessage: message,
                ),
              ),
              success: (data) {
                context.read<DashboardCubit>().connectSocket();
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
                                  Padding(
                                    padding: const EdgeInsets.only(left: 16.0),
                                    child: Icon(
                                      Icons.location_on,
                                      color: Colors
                                          .black, // Change color as needed
                                    ),
                                  ),
                                  SizedBox(width: 8.0),
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
                                    SizedBox(width: 8.0),
                                    Text(
                                      "Last Activity",
                                      style: Theme.of(context)!
                                          .textTheme
                                          .bodyLarge,
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
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(left: 15.0),
                                        child: Icon(
                                          Icons.print,
                                          color: Colors
                                              .black, // Change color as needed
                                        ),
                                      ),
                                      SizedBox(width: 8.0),
                                      Text(
                                        "Print",
                                        style: Theme.of(context)!
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
                        Container(
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
                                  "Regular Printing",
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                                Text(
                                  "Start from",
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                                Text(
                                  "Rp.500 / paper",
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: Dimens.space16),
                        Container(
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
                                  "Printing and Binding",
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                                Text(
                                  "Start from",
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                                Text(
                                  "Rp.700 / paper",
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(height: Dimens.space16),
                        Container(
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
                                  "Photo Print",
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                                Text(
                                  "Start from",
                                  style: Theme.of(context).textTheme.bodySmall,
                                ),
                                Text(
                                  "Rp.5000 / paper",
                                  style: Theme.of(context).textTheme.bodyMedium,
                                ),
                              ],
                            ),
                          ),
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
}
