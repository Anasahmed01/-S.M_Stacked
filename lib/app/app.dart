import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:stackedcappgg/services/counter_services.dart';
import 'package:stackedcappgg/views/counter_view.dart';
import 'package:stackedcappgg/views/home_view.dart';

@StackedApp(routes: [
  MaterialRoute(
    page: CounterView,
    initial: true,
  ),
  MaterialRoute(
    page: HomeView,
  ),
], dependencies: [
  Singleton(classType: NavigationService),
  LazySingleton(classType: CounterServices),
])
class App {}
