// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'home_view_model.dart';

// **************************************************************************
// RiverpodGenerator
// **************************************************************************

String _$homeViewModelHash() => r'94e56853722af2a4d4a037b8a0e549e66741b0e5';

/// Copied from Dart SDK
class _SystemHash {
  _SystemHash._();

  static int combine(int hash, int value) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + value);
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x0007ffff & hash) << 10));
    return hash ^ (hash >> 6);
  }

  static int finish(int hash) {
    // ignore: parameter_assignments
    hash = 0x1fffffff & (hash + ((0x03ffffff & hash) << 3));
    // ignore: parameter_assignments
    hash = hash ^ (hash >> 11);
    return 0x1fffffff & (hash + ((0x00003fff & hash) << 15));
  }
}

abstract class _$HomeViewModel extends BuildlessNotifier<String> {
  late final String initState;

  String build({
    String initState = '5億歳',
  });
}

/// See also [HomeViewModel].
@ProviderFor(HomeViewModel)
const homeViewModelProvider = HomeViewModelFamily();

/// See also [HomeViewModel].
class HomeViewModelFamily extends Family<String> {
  /// See also [HomeViewModel].
  const HomeViewModelFamily();

  /// See also [HomeViewModel].
  HomeViewModelProvider call({
    String initState = '5億歳',
  }) {
    return HomeViewModelProvider(
      initState: initState,
    );
  }

  @override
  HomeViewModelProvider getProviderOverride(
    covariant HomeViewModelProvider provider,
  ) {
    return call(
      initState: provider.initState,
    );
  }

  static const Iterable<ProviderOrFamily>? _dependencies = null;

  @override
  Iterable<ProviderOrFamily>? get dependencies => _dependencies;

  static const Iterable<ProviderOrFamily>? _allTransitiveDependencies = null;

  @override
  Iterable<ProviderOrFamily>? get allTransitiveDependencies =>
      _allTransitiveDependencies;

  @override
  String? get name => r'homeViewModelProvider';
}

/// See also [HomeViewModel].
class HomeViewModelProvider
    extends NotifierProviderImpl<HomeViewModel, String> {
  /// See also [HomeViewModel].
  HomeViewModelProvider({
    this.initState = '5億歳',
  }) : super.internal(
          () => HomeViewModel()..initState = initState,
          from: homeViewModelProvider,
          name: r'homeViewModelProvider',
          debugGetCreateSourceHash:
              const bool.fromEnvironment('dart.vm.product')
                  ? null
                  : _$homeViewModelHash,
          dependencies: HomeViewModelFamily._dependencies,
          allTransitiveDependencies:
              HomeViewModelFamily._allTransitiveDependencies,
        );

  final String initState;

  @override
  bool operator ==(Object other) {
    return other is HomeViewModelProvider && other.initState == initState;
  }

  @override
  int get hashCode {
    var hash = _SystemHash.combine(0, runtimeType.hashCode);
    hash = _SystemHash.combine(hash, initState.hashCode);

    return _SystemHash.finish(hash);
  }

  @override
  String runNotifierBuild(
    covariant HomeViewModel notifier,
  ) {
    return notifier.build(
      initState: initState,
    );
  }
}
// ignore_for_file: unnecessary_raw_strings, subtype_of_sealed_class, invalid_use_of_internal_member, do_not_use_environment, prefer_const_constructors, public_member_api_docs, avoid_private_typedef_functions
