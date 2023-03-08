import 'package:stacked/stacked.dart';
import 'package:stackedcappgg/app/app.locator.dart';
import 'package:stackedcappgg/services/counter_services.dart';

class HomeViewModel extends BaseViewModel {
  final counterServices = locator<CounterServices>();

  addValue() {
    counterServices.counterValue;
    rebuildUi();
  }
}
