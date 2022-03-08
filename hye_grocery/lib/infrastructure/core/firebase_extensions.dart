import 'package:cloud_firestore/cloud_firestore.dart';

extension FireStoreX on FirebaseFirestore {
  CollectionReference get usersCollection => collection('users');
  CollectionReference get productsCollection => collection('products');
}
