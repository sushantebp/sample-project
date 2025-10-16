import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample_project/features/bottom-nav-bar/bottom-tabs/profile/data/data.dart';
import 'package:sample_project/features/bottom-nav-bar/bottom-tabs/profile/domain/domain.dart';

part 'address_model.g.dart';
part 'address_model.freezed.dart';

@freezed
abstract class AddressModel with _$AddressModel implements AddressEntity {
  const factory AddressModel({
    required String address,
    required String city,
    required String state,
    required String stateCode,
    required String postalCode,
    required CoordinatesModel coordinates,
    required String country,
  }) = _AddressModel;

  factory AddressModel.fromJson(Map<String, dynamic> json) =>
      _$AddressModelFromJson(json);
}
