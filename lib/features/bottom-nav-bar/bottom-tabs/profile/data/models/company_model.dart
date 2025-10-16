import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample_project/features/bottom-nav-bar/bottom-tabs/profile/data/data.dart';
import 'package:sample_project/features/bottom-nav-bar/bottom-tabs/profile/domain/domain.dart';

part 'company_model.g.dart';
part 'company_model.freezed.dart';

@freezed
abstract class CompanyModel with _$CompanyModel implements CompanyEntity {
  const factory CompanyModel({
    required String department,
    required String name,
    required String title,
    required AddressModel address,
  }) = _CompanyModel;

  factory CompanyModel.fromJson(Map<String, dynamic> json) =>
      _$CompanyModelFromJson(json);
}
