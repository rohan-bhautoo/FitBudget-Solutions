<p align="center">
  <img width="200" height="200" src="https://github.com/rohan-bhautoo/FitBudget-Solutions/blob/master/Screenshots/Logo.png">
</p>
<h1 align="center">FitBudget Solutions</h1>
<p>
  <img alt="Version" src="https://img.shields.io/badge/version-1.0.0-brightgreen.svg" />
  <img alt="Flutter" src="https://img.shields.io/badge/Flutter-42A5F5?logo=flutter&logoColor=white" />
  <img alt="Dart" src="https://img.shields.io/badge/Dart-4597ce?logo=dart&logoColor=white" />
  <img alt="VSCode" src="https://img.shields.io/badge/Visual_Studio_Code-0078d7?logo=visualstudiocode&logoColor=white" />
</p>

## Description
> FitBudget Solutions is an application which lets you track your money such as your expenses, checks if you have reached your savings goals and gives you statistics on your income and outcome. This app was built using flutter.

### 🏠 [Homepage](/lib/main.dart)
<p align="center">
  <img height="400" src="https://github.com/rohan-bhautoo/FitBudget-Solutions/blob/master/Screenshots/Financial%20UI%20Kit.png">
</p>

## Prerequisite
### Flutter
> Flutter is an open-source UI software development kit created by Google. It is used to develop cross platform applications for Android, iOS, Linux, macOS, Windows, Google Fuchsia, and the web from a single codebase. Download it [here](https://docs.flutter.dev/get-started/install).
> 
> For Windows: [Installation Guide](https://docs.flutter.dev/get-started/install/windows)
> 
> For Mac OS: [Installation Guide](https://docs.flutter.dev/get-started/install/macos)
> 
> For Linux: [Installation Guide](https://docs.flutter.dev/get-started/install/linux)
> 
> For Chrome OS: [Installation Guide](https://docs.flutter.dev/get-started/install/chromeos)

## Packages Used
### [flutter_svg](https://pub.dev/packages/flutter_svg)
> Draw SVG (and some Android VectorDrawable (XML)) files on a Flutter Widget.
> 
> Add dependency to ```pubspec.yaml```:
```yaml
dependencies:
  flutter_svg: ^1.0.3
```
> Import the package:
```dart
import 'package:flutter_svg/flutter_svg.dart';
```

> Basic Usage:
```dart
final String assetName = 'assets/image.svg';
final Widget svg = SvgPicture.asset(
  assetName,
  semanticsLabel: 'Acme Logo'
);
```

### [flutter_credit_card](https://pub.dev/packages/flutter_credit_card)
> A Flutter package allows you to easily implement the Credit card's UI easily with the Card detection.
> 
> Add dependency to ```pubspec.yaml```:
```yaml
dependencies:
    flutter_credit_card: <latest_version>
```
> Import the package:
```dart
import 'package:flutter_credit_card/flutter_credit_card.dart';
```

> Basic Usage:
```dart
CreditCardWidget(
  cardNumber: cardNumber,
  expiryDate: expiryDate,
  cardHolderName: cardHolderName,
  cvvCode: cvvCode,
  showBackView: isCvvFocused,
  cardbgColor: Colors.black,
  glassmorphismConfig: Glassmorphism.defaultConfig(),
  backgroundImage: 'assets/card_bg.png',
  obscureCardNumber: true,
  obscureCardCvv: true,
  isHolderNameVisible: false,
  height: 175,
  textStyle: TextStyle(color: Colors.yellowAccent),
  width: MediaQuery.of(context).size.width,
  isChipVisible: true,
  isSwipeGestureEnabled: true,
  animationDuration: Duration(milliseconds: 1000),
  customCardIcons: <CustomCardTypeImage>[],
)
```

### [syncfusion_flutter_charts](https://pub.dev/packages/syncfusion_flutter_charts)
> The Flutter Charts package is a data visualization library written natively in Dart for creating beautiful, animated and high-performance charts, which are used to craft high-quality mobile app user interfaces using Flutter.
> 
> Add dependency to ```pubspec.yaml```:
```yaml
dependencies:
  syncfusion_flutter_charts: ^19.4.54
```
> Import the package:
```dart
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:syncfusion_flutter_charts/sparkcharts.dart';
```

> Basic Usage:
```dart
TooltipBehavior _tooltipBehavior;

@override
void initState(){
  _tooltipBehavior = TooltipBehavior(enable: true);
  super.initState();
}

@override
Widget build(BuildContext context) {
  return Scaffold(
    body: Center(
        child: Container(
          child: SfCartesianChart(

            primaryXAxis: CategoryAxis(),
            // Chart title
            title: ChartTitle(text: 'Half yearly sales analysis'),
            // Enable legend
            legend: Legend(isVisible: true),
            // Enable tooltip
            tooltipBehavior: _tooltipBehavior,

            series: <LineSeries<SalesData, String>>[
              LineSeries<SalesData, String>(
                dataSource:  <SalesData>[
                  SalesData('Jan', 35),
                  SalesData('Feb', 28),
                  SalesData('Mar', 34),
                  SalesData('Apr', 32),
                  SalesData('May', 40)
                ],
                xValueMapper: (SalesData sales, _) => sales.year,
                yValueMapper: (SalesData sales, _) => sales.sales,
                // Enable data label
                dataLabelSettings: DataLabelSettings(isVisible: true)
              )
            ]
          )
        )
      )
  );
}
```

## Usage
> Click on the "Run and Debug" button in Visual Studio Code to launch the application on your android phone or on an [emulator](https://developer.android.com/studio/run/emulator).

## Author

👤 **Rohan Bhautoo**

* Github: [@rohan-bhautoo](https://github.com/rohan-bhautoo)
* LinkedIn: [@rohan-bhautoo](https://linkedin.com/in/rohan-bhautoo)


## Show your support

Give a ⭐️ if this project helped you!
