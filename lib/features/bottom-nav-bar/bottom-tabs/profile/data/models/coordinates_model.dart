import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample_project/features/bottom-nav-bar/bottom-tabs/profile/domain/domain.dart';

part 'coordinates_model.g.dart';
part 'coordinates_model.freezed.dart';

@freezed
abstract class CoordinatesModel
    with _$CoordinatesModel
    implements CoordinatesEntity {
  const factory CoordinatesModel({required double lat, required double lng}) =
      _CoordinatesModel;

  factory CoordinatesModel.fromJson(Map<String, dynamic> json) =>
      _$CoordinatesModelFromJson(json);
}
