import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:geocoding/geocoding.dart';
import 'package:sky_printing/ui/order/cubit/order_cubit.dart';
import 'package:sky_printing_core/sky_printing_core.dart';
import 'package:sky_printing_domain/sky_printing_domain.dart';
import 'package:webview_flutter/webview_flutter.dart';

class OrderPage extends StatefulWidget {
  const OrderPage({
    super.key,
    required this.name,
    required this.prices,
    required this.placemarks,
    required this.store,
    required this.bundle,
  });
  final String? name;
  final Map<String, int?> prices;
  final List<Placemark>? placemarks;
  final List<StoreEntity>? store;
  final List<BundleEntity>? bundle;

  @override
  State<OrderPage> createState() => _OrderPageState();
}

class _OrderPageState extends State<OrderPage> with TickerProviderStateMixin {
  final _copiesController = TextEditingController();
  final _fileController = TextEditingController();
  late TabController _tabController;
  StoreEntity? selectedStore;
  String? selectedOption;
  int? totalPage;

  @override
  void didUpdateWidget(covariant OrderPage oldWidget) {
    log.i("didUpdateWidget");
    super.didUpdateWidget(oldWidget);
  }

  @override
  void initState() {
    _tabController = TabController(length: 2, vsync: this);
    _copiesController.text = "1";
    super.initState();
  }

  @override
  void dispose() {
    _tabController.dispose();
    _copiesController.dispose();
    _fileController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Parent(
      extendBody: true,
      avoidBottomInset: true,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(80.h),
        child: AppBar(
          title: Text(
            widget.name!,
            style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                  fontSize: 18.sp,
                ),
          ),
          bottom: TabBar(
            onTap: (value) {
              setState(() {
                _tabController.index = value;
              });
            },
            controller: _tabController,
            tabs: const [
              Tab(
                icon: Icon(Icons.upload_file),
              ),
              Tab(
                icon: Icon(Icons.document_scanner),
              ),
            ],
          ),
        ),
      ),
      bottomNavigation: context.watch<OrderCubit>().result != null &&
              _tabController.index == 1
          ? Container(
              margin: const EdgeInsets.all(16),
              child: ButtonText(
                color: Colors.black,
                title: Strings.of(context)!.order,
                onPressed: () {
                  final isColor = selectedOption == "Color" ? true : false;

                  context.read<OrderCubit>().order(
                        int.parse(_copiesController.text),
                        isColor,
                        totalPage!,
                        selectedStore!,
                        widget.name!,
                        widget.bundle!,
                        context,
                      );
                },
              ),
            )
          : Container(
              margin: const EdgeInsets.all(16),
              child: ButtonText(
                key: const Key("btn_login"),
                title: Strings.of(context)!.next,
                onPressed: () {
                  if (_copiesController.text.isEmpty) {
                    Strings.of(context)!
                        .please_fill_copies_field
                        .toToastError(context);
                  }
                  if (selectedStore == null) {
                    Strings.of(context)!
                        .no_store_selected
                        .toToastError(context);
                  }
                  if (context.read<OrderCubit>().result == null) {
                    Strings.of(context)!.no_file_selected.toToastError(context);
                  }
                  if (selectedOption == null) {
                    Strings.of(context)!
                        .no_file_option_selected
                        .toToastError(context);
                  }
                  if (_copiesController.text.isNotEmpty &&
                      context.read<OrderCubit>().result != null &&
                      selectedStore != null &&
                      selectedOption != null) {
                    log.i("order");
                    setState(() {
                      _tabController.animateTo(1);
                    });
                  }
                },
                color: Colors.black,
                fontSize: Dimens.titleSmall,
              ),
            ),
      child: TabBarView(
        controller: _tabController,
        // make tab doesnt swipe
        physics: const NeverScrollableScrollPhysics(),
        children: <Widget>[
          buildUploadTab(),
          buildFileView(),
        ],
      ),
    );
  }

  Widget buildFileView() {
    return context.watch<OrderCubit>().result == null
        ? Center(
            child: Text(Strings.of(context)!.no_file_selected),
          )
        : PDFView(
            filePath: context.watch<OrderCubit>().result!.files.first.path,
            enableSwipe: true,
            autoSpacing: false,
            pageFling: false,
            onRender: (pages) {
              log.i("onRender");
              setState(() {
                totalPage = pages;
              });
            },
            onError: (error) {
              log.e(error);
            },
            onPageError: (page, error) {
              log.e(error);
            },
            onViewCreated: (PDFViewController pdfViewController) {
              context.read<OrderCubit>().setController(pdfViewController);
            },
            onPageChanged: (int? page, int? total) { 
            },
          );
  }

  Widget buildUploadTab() {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Pick Store",
                    style: Theme.of(context).textTheme.headlineLarge!.copyWith(
                          fontSize: 20.sp,
                        ),
                  ),
                  Text(
                    "Available store in ${widget.placemarks!.first.subAdministrativeArea!.split(' ').last}",
                    style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                          fontSize: 14.sp,
                        ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: Dimens.space12,
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Colors.grey,
                ),
              ),
              child: DropdownButton<StoreEntity>(
                underline: Container(),
                isExpanded: true,
                hint: const Text(
                  'Choose Store',
                ),
                items: widget.store!
                    .map(
                      (e) => DropdownMenuItem(
                        value: e,
                        child: Text(e.name!),
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  context.read<OrderCubit>().joinRoom(value!.id!);
                  setState(() {
                    selectedStore = value;
                  });
                },
                value: selectedStore,
              ),
            ),
            BlocBuilder<OrderCubit, OrderState>(builder: (context, state) {
              return state.when(
                  loading: () => const Loading(),
                  success: (s) {
                    return InkWell(
                      onTap: () {
                        context.read<OrderCubit>().pickFile();
                      },
                      child: Container(
                        margin: const EdgeInsets.all(16),
                        padding: const EdgeInsets.all(16),
                        width: double.infinity,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8),
                          color: const Color(0xFFCFE7FF),
                        ),
                        child: Column(
                          children: [
                            Row(
                              children: [
                                Image.asset(
                                  "assets/images/folder-icon.png",
                                  width: 24.w,
                                  height: 24.h,
                                ),
                                SizedBox(
                                  width: Dimens.space8,
                                ),
                                Text(
                                  "Pick File",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodyMedium!
                                      .copyWith(
                                        fontWeight: FontWeight.w500,
                                      ),
                                ),
                              ],
                            ),
                            Container(
                              margin: EdgeInsets.all(16.sp),
                              child: SvgPicture.asset(
                                "assets/images/PDF_file_icon.svg",
                                height: 124.h,
                              ),
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Text(
                                          "File Name",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                        SizedBox(
                                          width: Dimens.space8,
                                        ),
                                        Text(
                                          context.watch<OrderCubit>().result ==
                                                  null
                                              ? ""
                                              : "${context.watch<OrderCubit>().result!.files.first.name.substring(0, 10)}...",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: Dimens.space8,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "File Size",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                        SizedBox(
                                          width: Dimens.space8,
                                        ),
                                        Text(
                                          context.watch<OrderCubit>().result ==
                                                  null
                                              ? ""
                                              : "${(context.watch<OrderCubit>().result!.files.first.size / 1048576).toStringAsFixed(2)} MB",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyMedium!
                                              .copyWith(
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                                TextButton(
                                  style: ButtonStyle(
                                    padding: MaterialStateProperty.all(
                                      EdgeInsets.all(
                                        8.sp,
                                      ),
                                    ),
                                    backgroundColor: MaterialStateProperty.all(
                                      Colors.white,
                                    ),
                                    side: MaterialStateProperty.all(
                                      const BorderSide(
                                        color: Colors.grey,
                                      ),
                                    ),
                                    shape: MaterialStateProperty.all(
                                      RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(
                                          8.sp,
                                        ),
                                      ),
                                    ),
                                  ),
                                  onPressed: () {
                                    context.read<OrderCubit>().pickFile();
                                  },
                                  child: Text(
                                    "Open File",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodyMedium!
                                        .copyWith(
                                          fontWeight: FontWeight.w500,
                                        ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                  failure: (err) => Empty(
                        errorMessage: err,
                      ),
                  empty: () => const Empty());
            }),
            TextF(
              controller: _copiesController,
              keyboardType: TextInputType.number,
              prefixIcon: const Icon(Icons.copy),
              hintText: 'Copies',
              hint: 'Copies',
            ),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(8),
                border: Border.all(
                  color: Colors.grey,
                ),
              ),
              child: DropdownButton<String>(
                underline: Container(),
                isExpanded: true,
                hint: Text(
                  'Choose Option',
                  style: Theme.of(context).textTheme.bodyMedium,
                ),
                items: ["Black and White", "Color"]
                    .map(
                      (e) => DropdownMenuItem(
                        value: e,
                        child: Text(
                          e,
                          style: Theme.of(context).textTheme.bodyMedium,
                        ),
                      ),
                    )
                    .toList(),
                onChanged: (value) {
                  setState(() {
                    selectedOption = value;
                  });
                },
                value: selectedOption,
              ),
            ),
            SizedBox(
              height: Dimens.space16,
            ),
            context.watch<OrderCubit>().controller == null
                ? Container()
                : Expanded(
                    child: WebViewWidget(
                      controller: context.read<OrderCubit>().controller!,
                    ),
                  ),
          ],
        ),
      ),
    );
  }
}
