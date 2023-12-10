class OrderChartModel {
  final String date;
  final double total;
  OrderChartModel(
    this.date,
    this.total,
  );
}

class SalesData {
  SalesData(this.year, this.sales);

  final String year;
  final double sales;
}
