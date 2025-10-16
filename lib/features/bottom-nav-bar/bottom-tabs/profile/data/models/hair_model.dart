import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sample_project/features/bottom-nav-bar/bottom-tabs/profile/domain/domain.dart';

part 'hair_model.g.dart';
part 'hair_model.freezed.dart';

@freezed
abstract class HairModel with _$HairModel implements HairEntity {
  const factory HairModel({required String color, required String type}) =
      _HairModel;

  factory HairModel.fromJson(Map<String, dynamic> json) =>
      _$HairModelFromJson(json);
}
