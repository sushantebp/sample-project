import 'package:sample_project/features/bottom-nav-bar/bottom-tabs/profile/data/data.dart';
import 'package:sample_project/features/bottom-nav-bar/bottom-tabs/profile/domain/domain.dart';

extension AddressModelMapping on AddressModel {
  AddressEntity toEntity() => AddressEntity(
    address: address,
    city: city,
    state: state,
    stateCode: stateCode,
    postalCode: postalCode,
    coordinates: coordinates.toEntity(),
    country: country,
  );
}
