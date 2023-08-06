import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:motow_app/features/register/model/user_register_model.dart';
import 'package:sign_in_with_apple_platform_interface/authorization_credential.dart';

class RegisterService {
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  Future<GoogleSignInAccount?> signInWithGoogle() async {
    try {
      final user = await _googleSignIn.signIn();

      return user;
    } catch (error) {
      debugPrint(error.toString());
    }
    return null;
  }

  registerUserGoogle(GoogleSignInAccount user) {
    final userCollection = _firebaseFirestore.collection("/users");

    userCollection.where('email', isEqualTo: user.email).get().then((value) {
      if (value.docs.isEmpty) {
        userCollection.add(
            UserRegister(
              id: user.id,
              name: user.displayName,
              photoUrl:user.photoUrl,
              email: user.email,
              registerDate: FieldValue.serverTimestamp(),
              lastLogin: FieldValue.serverTimestamp(),
            ).toMap()
        );
      } else {
        userCollection.doc(value.docs.first.id).update(  UserRegister(
          photoUrl:user.photoUrl,
          lastLogin: FieldValue.serverTimestamp(),
        ).toMap());
      }
    });
  }

  registerUserApple(AuthorizationCredentialAppleID user) {
    final userCollection = _firebaseFirestore.collection("/users");
    userCollection.where('email', isEqualTo: user.email).get().then((value) {
      if (value.docs.isEmpty) {
        userCollection.add(UserRegister(
          id: user.identityToken,
          name: user.familyName,
          email: user.email,
          registerDate: FieldValue.serverTimestamp(),
          lastLogin: FieldValue.serverTimestamp(),
        ).toMap());
      } else {
        userCollection.doc(value.docs.first.id).update(
            UserRegister(
              lastLogin: FieldValue.serverTimestamp(),
            ).toMap()
        );
      }
    });
  }
}
