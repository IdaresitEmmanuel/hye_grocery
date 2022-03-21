import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:hye_grocery/domain/auth/i_auth_facade.dart';
import 'package:hye_grocery/domain/core/errors.dart';
import 'package:hye_grocery/injection.dart';

extension FireStoreX on FirebaseFirestore {
  CollectionReference get usersCollection => collection('users');
  CollectionReference get productsCollection => collection('products');
  Future<DocumentReference> userDocument() async {
    final userOption = await getIt<IAuthFacade>().getSignedInUser();
    final user = userOption.getOrElse(() => throw UnauthenticatedError());
    return FirebaseFirestore.instance.usersCollection.doc(user.id.getOrCrash());
  }
}

extension DocumentReferenceX on DocumentReference {
  CollectionReference get shoppingCart => collection('cart');
  CollectionReference get cards => collection('cards');
}
