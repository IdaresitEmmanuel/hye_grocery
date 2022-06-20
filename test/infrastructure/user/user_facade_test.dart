import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:dartz/dartz.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:hye_grocery/domain/user/user_failure.dart';
import 'package:hye_grocery/infrastructure/user/user_facade.dart';
import 'package:mockito/annotations.dart';
import 'package:mockito/mockito.dart';
// import 'package:hye_grocery/infrastructure/core/firebase_extensions.dart';

import 'user_facade_test.mocks.dart';

@GenerateMocks([
  FirebaseAuth,
  FirebaseFirestore,
  // User,
  // DocumentSnapshot,
])
void main() {
  MockFirebaseAuth mockFirebaseAuth = MockFirebaseAuth();
  MockFirebaseFirestore mockFirebaseFirestore = MockFirebaseFirestore();
  // MockUser mockUser = MockUser();
  UserFacade userFacade = UserFacade(mockFirebaseAuth, mockFirebaseFirestore);
  // MockDocumentSnapshot mockDocumentSnapshot = MockDocumentSnapshot();

  group("get user", () {
    // test("when user is found", () async {
    //   when(mockFirebaseAuth.currentUser).thenReturn(mockUser);
    //   when(mockUser.uid).thenReturn("uid");
    //   when(mockFirebaseFirestore.usersCollection.doc(mockUser.uid).get())
    //       .thenAnswer((realInvocation) async => mockDocumentSnapshot);
    //   final result = await userFacade.getUser();
    // });

    test("when user is not found", () async {
      when(mockFirebaseAuth.currentUser).thenReturn(null);

      final result = await userFacade.getUser();

      expect(result, const Left(UserFailure.networkFailure()));
    });
  });
}
