import 'package:freezed_annotation/freezed_annotation.dart';

part 'profile_failure.freezed.dart';

@freezed
abstract class ProfileFailure with _$ProfileFailure {
  const factory ProfileFailure.networkFailure() = NetworkFailure;
  const factory ProfileFailure.invalidValueFailure() = InvalidValueFailure;
  const factory ProfileFailure.imageEditFailure() = ImageEditFailure;
  const factory ProfileFailure.profileEditFailure() = ProfileEditFailure;
  const factory ProfileFailure.profileDoesNotExist() = ProfileDoesNotExist;
}
