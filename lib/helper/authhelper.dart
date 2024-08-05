import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class AuthHelper {
  AuthHelper._();

  static final AuthHelper instance = AuthHelper._();

  FirebaseAuth auth = FirebaseAuth.instance;

  anonymousLogin() async {
    UserCredential credential = await auth.signInAnonymously();
    return credential.user;
  }

  Future<User?> register(
      {required String email, required String password}) async {
    User? user;
    try {
      UserCredential credential = await auth.createUserWithEmailAndPassword(
          email: email, password: password);
      user = credential.user;
    } catch (e) {
      print(e);
    }
    return user;
  }

  Future<User?> signIn(
      {required String email, required String password}) async {
    User? user;
    try {
      UserCredential credential = await auth.signInWithEmailAndPassword(
          email: email, password: password);
      user = credential.user;
    } catch (e) {
      print(e);
    }
    return user;
  }

  Future<UserCredential> signInWithGoogle() async {
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    return await auth.signInWithCredential(credential);
  }

  Future<void> logOut() async {
    await auth.signOut();
    await GoogleSignIn().signOut();
  }
}
