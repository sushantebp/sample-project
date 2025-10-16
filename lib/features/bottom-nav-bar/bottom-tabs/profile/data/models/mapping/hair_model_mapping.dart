import 'package:sample_project/features/bottom-nav-bar/bottom-tabs/profile/data/data.dart';
import 'package:sample_project/features/bottom-nav-bar/bottom-tabs/profile/domain/domain.dart';

extension HairModelMapping on HairModel {
  HairEntity toEntity() => HairEntity(color: color, type: type);
}
