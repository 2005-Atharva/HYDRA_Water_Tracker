import 'package:firebase_auth/firebase_auth.dart';

class AuthFunction {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  // Stream for Auth State Changes
  Stream<User?> get authStateChanges => _firebaseAuth.authStateChanges();

  // Sign Up with Email and Password
  Future<String?> signUp(String email, String password) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );
      return "Sign Up Successful";
    } catch (e) {
      return e.toString();
    }
  }

  // Sign In with Email and Password
  Future<String?> signIn(String email, String password) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      return "Sign In Successful";
    } catch (e) {
      print(' error is:${e.toString}');
      return e.toString();
    }
  }

  // Sign Out
  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  // Get Current User
  User? getCurrentUser() {
    return _firebaseAuth.currentUser;
  }
}
