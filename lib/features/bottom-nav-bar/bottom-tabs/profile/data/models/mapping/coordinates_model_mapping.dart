import 'package:sample_project/features/bottom-nav-bar/bottom-tabs/profile/data/data.dart';
import 'package:sample_project/features/bottom-nav-bar/bottom-tabs/profile/domain/domain.dart';

extension CoordinatesModelMapping on CoordinatesModel {
  CoordinatesEntity toEntity() => CoordinatesEntity(lat: lat, lng: lng);
}
