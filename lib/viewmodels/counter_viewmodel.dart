import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stackedcappgg/app/app.locator.dart';
import 'package:stackedcappgg/app/app.router.dart';
import 'package:stackedcappgg/services/counter_services.dart';

class CounterViewModel extends BaseViewModel {
  final counterServices = locator<CounterServices>();
  final navigationService = locator<NavigationService>();

  navigateHomeView() {
    navigationService.navigateTo(Routes.homeView);
  }

  addValue() {
    counterServices.addCounterValue();
    rebuildUi();
  }
}
