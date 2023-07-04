// ignore_for_file: avoid_manual_providers_as_generated_provider_dependency
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_view_model.g.dart';

@Riverpod(keepAlive: true)
class HomeViewModel extends _$HomeViewModel {
  @override
  String build({
    String initState = '5億歳',
  }) {
    return initState;
  }

  void fetch() {
    var now = DateTime.now();
    var birthDay = DateTime(now.year - 2000, now.month - 4, now.day - 13);
    state = '${birthDay.year}歳';
  }
}
