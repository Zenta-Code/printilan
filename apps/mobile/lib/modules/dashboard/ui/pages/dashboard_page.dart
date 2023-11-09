import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sky_printing/core/core.dart';
import 'package:sky_printing/modules/dashboard/domain/usecases/get_location.dart';
import 'package:sky_printing/modules/dashboard/ui/cubit/dashboard_cubit.dart';

class DashboardPage extends StatefulWidget {
  const DashboardPage({super.key});

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
              )),
              success: (data) {
                context.read<DashboardCubit>().connectSocket();
                return SingleChildScrollView(
                  child: Center(
                    child: Column(
                      children: [
                        Container(
                          width: double.infinity,
                          color:
                              Theme.of(context).extension<LzyctColors>()!.card,
                          child: Column(
                            children: [
                              Text(
                                Strings.of(context)!.location,
                              ),
                              Text(
                                " ${data.placemarks!.first.locality!.split(' ').last}, ${data.placemarks!.first.subAdministrativeArea!.split(' ').last}",
                                style: Theme.of(context).textTheme.bodyText1,
                              ),
                            ],
                          ),
                        ),
                        Card(
                          child: Container(
                            width: 300,
                            padding: EdgeInsets.all(Dimens.space16),
                            child: Column(
                              children: [
                                Text('TEST WEBSOCKET'),
                                SizedBox(height: Dimens.space12),
                                ElevatedButton(
                                  onPressed: () {
                                    context
                                        .read<DashboardCubit>()
                                        .joinSocket('a');
                                  },
                                  child: Text('Join Room A'),
                                ),
                                TextF(
                                  prefixIcon: Icon(Icons.message),
                                  controller: _textCon,
                                ),
                                ElevatedButton(
                                  onPressed: () {
                                    context
                                        .read<DashboardCubit>()
                                        .sendSocket(_textCon.text);
                                  },
                                  child: Text('Send Message'),
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
