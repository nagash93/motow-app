import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:google_sign_in/google_sign_in.dart';

class RegisterService {
  final GoogleSignIn _googleSignIn = GoogleSignIn();

  final FirebaseFirestore _firebaseFirestore = FirebaseFirestore.instance;

  signInWithGoogle() async {
    try {
      GoogleSignInAccount? user = await _googleSignIn.signIn();

      return user;
    } catch (error) {
      print(error);
    }
  }

  registerUser(GoogleSignInAccount user) {
    final userCollection = _firebaseFirestore.collection("/users");

    userCollection.where('email', isEqualTo: user.email).get().then((value) {
      if (value.docs.isEmpty) {
        userCollection.add({
          'id': user.id,
          'name': user.displayName,
          'photo_url': user.photoUrl,
          'email': user.email, // John Doe
          'register_date': FieldValue.serverTimestamp(),
          'last_login':FieldValue.serverTimestamp(),
        });
      } else {
        userCollection.doc(value.docs.first.id).update({
          'photo_url': user.photoUrl,
          'last_login': FieldValue.serverTimestamp()
        });
      }
    });
  }
}
