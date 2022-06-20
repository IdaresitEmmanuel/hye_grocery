import 'dart:io';

import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hye_grocery/application/profile/profile_bloc.dart';
import 'package:hye_grocery/domain/auth/value_field_objects.dart';
import 'package:hye_grocery/domain/profile/i_profile_facade.dart';
import 'package:hye_grocery/domain/profile/profile_failure.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';

import 'profile_bloc_test.mocks.dart';

@GenerateMocks([IProfileFacade])
void main() {
  MockIProfileFacade mockIProfileFacade = MockIProfileFacade();
  const userNameString = 'Emmanuel';
  const phoneNumberString = '08045783124';
  final userName = UserName(userNameString);
  final phoneNumber = PhoneNumber(phoneNumberString);
  const fileName = 'file';
  final imageFile = File('src://file.png');
  const imageStorageLocation = '//storageLocation';
  test(
    'first state should be the initial state',
    () => expect(ProfileBloc(mockIProfileFacade).state, ProfileState.initial()),
  );

  blocTest(
    'reset state',
    build: () => ProfileBloc(mockIProfileFacade),
    act: (ProfileBloc profileBloc) =>
        profileBloc.add(const ProfileEvent.resetState()),
    expect: () => [ProfileState.initial()],
  );

  blocTest(
    'setEditUserName',
    build: () => ProfileBloc(mockIProfileFacade),
    act: (ProfileBloc profileBloc) =>
        profileBloc.add(const ProfileEvent.setEditUsername(userNameString)),
    expect: () => [ProfileState.initial().copyWith(editUsername: userName)],
  );

  blocTest(
    'setEditPhoneNumber',
    build: () => ProfileBloc(mockIProfileFacade),
    act: (ProfileBloc profileBloc) => profileBloc
        .add(const ProfileEvent.setEditPhonenumber(phoneNumberString)),
    expect: () =>
        [ProfileState.initial().copyWith(editPhonenumber: phoneNumber)],
  );

  group('update profile image', () {
    blocTest(
      'when profile image update is successful',
      build: () {
        when(mockIProfileFacade.updateProfileImage(
                fileName: fileName, file: imageFile))
            .thenAnswer((_) async => const Right(unit));
        return ProfileBloc(mockIProfileFacade);
      },
      act: (ProfileBloc profileBloc) => profileBloc.add(
          ProfileEvent.updateProfileImage(fileName: fileName, file: imageFile)),
      expect: () => [
        ProfileState.initial().copyWith(isImageLoading: true),
        ProfileState.initial().copyWith(
          isImageLoading: true,
          imageEditFailureOrSuccess: some(right(unit)),
        ),
        ProfileState.initial()
            .copyWith(isImageLoading: false, imageEditFailureOrSuccess: none()),
      ],
      verify: (ProfileBloc profileBloc) {
        verify(mockIProfileFacade.updateProfileImage(
                fileName: fileName, file: imageFile))
            .called(1);
      },
    );

    blocTest(
      'when profile image update is unsuccessful',
      build: () {
        when(mockIProfileFacade.updateProfileImage(
                fileName: fileName, file: imageFile))
            .thenAnswer(
                (_) async => const Left(ProfileFailure.imageEditFailure()));
        return ProfileBloc(mockIProfileFacade);
      },
      act: (ProfileBloc profileBloc) => profileBloc.add(
          ProfileEvent.updateProfileImage(fileName: fileName, file: imageFile)),
      expect: () => [
        ProfileState.initial().copyWith(isImageLoading: true),
        ProfileState.initial().copyWith(
          isImageLoading: true,
          imageEditFailureOrSuccess:
              some(left(const ProfileFailure.imageEditFailure())),
        ),
        ProfileState.initial()
            .copyWith(isImageLoading: false, imageEditFailureOrSuccess: none()),
      ],
      verify: (ProfileBloc profileBloc) {
        verify(mockIProfileFacade.updateProfileImage(
                fileName: fileName, file: imageFile))
            .called(1);
      },
    );
  });

  group('update user profile', () {
    blocTest(
      'when user profile update is successful',
      build: () {
        when(mockIProfileFacade.updateUserProfile(
                userName: userName, phoneNumber: phoneNumber))
            .thenAnswer((_) async => const Right(unit));
        return ProfileBloc(mockIProfileFacade);
      },
      act: (ProfileBloc profileBloc) {
        profileBloc.add(const ProfileEvent.setEditUsername(userNameString));
        profileBloc
            .add(const ProfileEvent.setEditPhonenumber(phoneNumberString));
        profileBloc.add(const ProfileEvent.updateUserProfile());
      },
      expect: () => [
        ProfileState.initial().copyWith(editUsername: userName),
        ProfileState.initial()
            .copyWith(editUsername: userName, editPhonenumber: phoneNumber),
        ProfileState.initial().copyWith(
          editUsername: userName,
          editPhonenumber: phoneNumber,
          showEditErrorMessage: true,
          isEditing: true,
          editFailureOrSuccess: none(),
        ),
        ProfileState.initial().copyWith(
          editUsername: userName,
          editPhonenumber: phoneNumber,
          showEditErrorMessage: true,
          isEditing: true,
          editFailureOrSuccess: some(right(unit)),
        ),
        ProfileState.initial().copyWith(
            editUsername: userName,
            editPhonenumber: phoneNumber,
            showEditErrorMessage: true,
            isEditing: false,
            editFailureOrSuccess: none()),
      ],
      verify: (ProfileBloc profileBloc) {
        verify(mockIProfileFacade.updateUserProfile(
                userName: userName, phoneNumber: phoneNumber))
            .called(1);
      },
    );

    blocTest(
      'when user profile update is unsuccessful',
      build: () {
        when(mockIProfileFacade.updateUserProfile(
                userName: userName, phoneNumber: phoneNumber))
            .thenAnswer(
                (_) async => const Left(ProfileFailure.profileEditFailure()));
        return ProfileBloc(mockIProfileFacade);
      },
      act: (ProfileBloc profileBloc) {
        profileBloc.add(const ProfileEvent.setEditUsername(userNameString));
        profileBloc
            .add(const ProfileEvent.setEditPhonenumber(phoneNumberString));
        profileBloc.add(const ProfileEvent.updateUserProfile());
      },
      expect: () => [
        ProfileState.initial().copyWith(editUsername: userName),
        ProfileState.initial()
            .copyWith(editUsername: userName, editPhonenumber: phoneNumber),
        ProfileState.initial().copyWith(
          editUsername: userName,
          editPhonenumber: phoneNumber,
          showEditErrorMessage: true,
          isEditing: true,
          editFailureOrSuccess: none(),
        ),
        ProfileState.initial().copyWith(
          editUsername: userName,
          editPhonenumber: phoneNumber,
          showEditErrorMessage: true,
          isEditing: true,
          editFailureOrSuccess:
              some(const Left(ProfileFailure.profileEditFailure())),
        ),
        ProfileState.initial().copyWith(
            editUsername: userName,
            editPhonenumber: phoneNumber,
            showEditErrorMessage: true,
            isEditing: false,
            editFailureOrSuccess: none()),
      ],
      verify: (ProfileBloc profileBloc) {
        verify(mockIProfileFacade.updateUserProfile(
                userName: userName, phoneNumber: phoneNumber))
            .called(1);
      },
    );
  });

  group('delete profile image', () {
    blocTest(
      'when delete profile image is successful',
      build: () {
        when(mockIProfileFacade.deleteProfileImage(
                imageStorageLocation: imageStorageLocation))
            .thenAnswer((_) async => const Right(unit));
        return ProfileBloc(mockIProfileFacade);
      },
      act: (ProfileBloc profileBloc) {
        profileBloc.add(const ProfileEvent.deleteProfileImage(
            imageStorageLocation: imageStorageLocation));
      },
      expect: () => [
        ProfileState.initial().copyWith(isImageLoading: true),
        ProfileState.initial().copyWith(
          isImageLoading: true,
          imageDeleteFailureOrSuccess: some(right(unit)),
        ),
        ProfileState.initial().copyWith(
          isImageLoading: false,
          imageDeleteFailureOrSuccess: none(),
        ),
      ],
      verify: (ProfileBloc profileBloc) {
        verify(mockIProfileFacade.deleteProfileImage(
                imageStorageLocation: imageStorageLocation))
            .called(1);
      },
    );

    blocTest(
      'when delete profile image is unsuccessful',
      build: () {
        when(mockIProfileFacade.deleteProfileImage(
                imageStorageLocation: imageStorageLocation))
            .thenAnswer(
                (_) async => const Left(ProfileFailure.imageEditFailure()));
        return ProfileBloc(mockIProfileFacade);
      },
      act: (ProfileBloc profileBloc) {
        profileBloc.add(const ProfileEvent.deleteProfileImage(
            imageStorageLocation: imageStorageLocation));
      },
      expect: () => [
        ProfileState.initial().copyWith(isImageLoading: true),
        ProfileState.initial().copyWith(
          isImageLoading: true,
          imageDeleteFailureOrSuccess:
              some(const Left(ProfileFailure.imageEditFailure())),
        ),
        ProfileState.initial().copyWith(
          isImageLoading: false,
          imageDeleteFailureOrSuccess: none(),
        ),
      ],
      verify: (ProfileBloc profileBloc) {
        verify(mockIProfileFacade.deleteProfileImage(
                imageStorageLocation: imageStorageLocation))
            .called(1);
      },
    );
  });
}
