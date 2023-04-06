import 'package:equatable/equatable.dart';

class Flavor extends Equatable {
  const Flavor.local() : type = FlavorType.local;

  const Flavor.staging() : type = FlavorType.staging;

  const Flavor.production() : type = FlavorType.production;

  final FlavorType type;

  @override
  List<Object?> get props => [type];
}

enum FlavorType {
  // Flavor for the development using web server (expressJs) run on local computer
  local,

  /// Flavor for the build that target staging environment
  staging,

  /// Flavor for the build that target production environment
  production,
}
