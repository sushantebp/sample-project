import 'package:sample_project/features/bottom-nav-bar/bottom-tabs/profile/data/data.dart';
import 'package:sample_project/features/bottom-nav-bar/bottom-tabs/profile/domain/domain.dart';

extension CompanyModelMapping on CompanyModel {
  CompanyEntity toEntity() => CompanyEntity(
    department: department,
    name: name,
    title: title,
    address: address.toEntity(),
  );
}
