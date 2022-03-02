import 'package:finance_app/components/constants.dart';
import 'package:finance_app/size_config.dart';
import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Body extends StatefulWidget {
  const Body({Key? key}) : super(key: key);

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  _BodyState();
  TrackballBehavior? _trackballBehavior;

  @override
  void initState() {
    _trackballBehavior = TrackballBehavior(
        enable: true,
        activationMode: ActivationMode.singleTap,
        tooltipSettings: const InteractiveTooltip(
            format: 'point.x : point.y', borderWidth: 0));
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: TabBarView(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(height: 20),
                const Text(
                  "Amount Saved This Year",
                  style: TextStyle(
                    color: kSecondaryTextColor,
                    fontSize: 20,
                  ),
                ),
                const SizedBox(height: 5),
                const Text(
                  "\$27,902.56",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 45,
                  ),
                ),
                Padding(
                  padding:
                      EdgeInsets.only(top: getProportionateScreenHeight(10)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: const [
                      Text(
                        "Day",
                        style: TextStyle(
                          color: kSecondaryTextColor,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "Week",
                        style: TextStyle(
                          color: kSecondaryTextColor,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "Month",
                        style: TextStyle(
                          color: kSecondaryTextColor,
                          fontSize: 20,
                        ),
                      ),
                      Text(
                        "Year",
                        style: TextStyle(
                          color: kPrimaryColor,
                          fontSize: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                _buildDefaultDateTimeAxisChart(_trackballBehavior)
              ],
            ),
          ),
          SingleChildScrollView(
            child: Column(
              children: const [
                Text("Tab 2"),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class IncomeData {
  final DateTime x;
  final double yValue;

  IncomeData({required this.x, required this.yValue});
}

SfCartesianChart _buildDefaultDateTimeAxisChart(_trackballBehavior) {
  return SfCartesianChart(
    plotAreaBorderWidth: 0,
    primaryXAxis: DateTimeAxis(majorGridLines: const MajorGridLines(width: 0)),
    primaryYAxis: NumericAxis(
      minimum: 1,
      maximum: 1.35,
      interval: 0.05,
      labelFormat: r'${value}',
      axisLine: const AxisLine(width: 0),
      majorTickLines: const MajorTickLines(size: 0),
    ),
    series: _getDefaultDateTimeSeries(),
    trackballBehavior: _trackballBehavior,
  );
}

List<LineSeries<IncomeData, DateTime>> _getDefaultDateTimeSeries() {
  return <LineSeries<IncomeData, DateTime>>[
    LineSeries<IncomeData, DateTime>(
      dataSource: <IncomeData>[
        IncomeData(x: DateTime(2015, 1, 1), yValue: 1.13),
        IncomeData(x: DateTime(2015, 2, 1), yValue: 1.12),
        IncomeData(x: DateTime(2015, 3, 1), yValue: 1.08),
        IncomeData(x: DateTime(2015, 4, 1), yValue: 1.12),
        IncomeData(x: DateTime(2015, 5, 1), yValue: 1.10),
        IncomeData(x: DateTime(2015, 6, 1), yValue: 1.12),
        IncomeData(x: DateTime(2015, 7, 1), yValue: 1.10),
        IncomeData(x: DateTime(2015, 8, 1), yValue: 1.12),
        IncomeData(x: DateTime(2015, 9, 1), yValue: 1.12),
        IncomeData(x: DateTime(2015, 10, 1), yValue: 1.10),
        IncomeData(x: DateTime(2015, 11, 1), yValue: 1.06),
        IncomeData(x: DateTime(2015, 12, 1), yValue: 1.09),
        IncomeData(x: DateTime(2016, 1, 1), yValue: 1.09),
        IncomeData(x: DateTime(2016, 2, 1), yValue: 1.09),
        IncomeData(x: DateTime(2016, 3, 1), yValue: 1.14),
        IncomeData(x: DateTime(2016, 4, 1), yValue: 1.14),
        IncomeData(x: DateTime(2016, 5, 1), yValue: 1.12),
        IncomeData(x: DateTime(2016, 6, 1), yValue: 1.11),
        IncomeData(x: DateTime(2016, 7, 1), yValue: 1.11),
        IncomeData(x: DateTime(2016, 8, 1), yValue: 1.11),
        IncomeData(x: DateTime(2016, 9, 1), yValue: 1.12),
        IncomeData(x: DateTime(2016, 10, 1), yValue: 1.10),
        IncomeData(x: DateTime(2016, 11, 1), yValue: 1.08),
        IncomeData(x: DateTime(2016, 12, 1), yValue: 1.05),
        IncomeData(x: DateTime(2017, 1, 1), yValue: 1.08),
        IncomeData(x: DateTime(2017, 2, 1), yValue: 1.06),
        IncomeData(x: DateTime(2017, 3, 1), yValue: 1.07),
        IncomeData(x: DateTime(2017, 4, 1), yValue: 1.09),
        IncomeData(x: DateTime(2017, 5, 1), yValue: 1.12),
        IncomeData(x: DateTime(2017, 6, 1), yValue: 1.14),
        IncomeData(x: DateTime(2017, 7, 1), yValue: 1.17),
        IncomeData(x: DateTime(2017, 8, 1), yValue: 1.18),
        IncomeData(x: DateTime(2017, 9, 1), yValue: 1.18),
        IncomeData(x: DateTime(2017, 10, 1), yValue: 1.16),
        IncomeData(x: DateTime(2017, 11, 1), yValue: 1.18),
        IncomeData(x: DateTime(2017, 12, 1), yValue: 1.20),
        IncomeData(x: DateTime(2018, 1, 1), yValue: 1.25),
        IncomeData(x: DateTime(2018, 2, 1), yValue: 1.22),
        IncomeData(x: DateTime(2018, 3, 1), yValue: 1.23),
        IncomeData(x: DateTime(2018, 4, 1), yValue: 1.21),
        IncomeData(x: DateTime(2018, 5, 1), yValue: 1.17),
        IncomeData(x: DateTime(2018, 6, 1), yValue: 1.17),
        IncomeData(x: DateTime(2018, 7, 1), yValue: 1.17),
        IncomeData(x: DateTime(2018, 8, 1), yValue: 1.17),
        IncomeData(x: DateTime(2018, 9, 1), yValue: 1.16),
        IncomeData(x: DateTime(2018, 10, 1), yValue: 1.13),
        IncomeData(x: DateTime(2018, 11, 1), yValue: 1.14),
        IncomeData(x: DateTime(2018, 12, 1), yValue: 1.15)
      ],
      xValueMapper: (IncomeData data, _) => data.x,
      yValueMapper: (IncomeData data, _) => data.yValue,
      color: kPrimaryColor,
      dataLabelSettings: const DataLabelSettings(isVisible: true),
    )
  ];
}
