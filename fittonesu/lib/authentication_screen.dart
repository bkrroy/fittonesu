import 'package:firebase_auth/firebase_auth.dart';

class AuthenticationService {
  final FirebaseAuth _firebaseAuth;

  AuthenticationService(this._firebaseAuth);

  Stream<User> get authStateChanges => _firebaseAuth.idTokenChanges();

  String _email;
  String _password;

  void getEmail({String emailID}){
    _email = emailID;
    print(_email);
  }

  void getPassword({String password}){
    _password = password;
  }

  String returnEmail(){
    return _email;
  }

  String returnPassword(){
    return _password;
  }



  Future<void> signOut() async {
    await _firebaseAuth.signOut();
  }

  Future<String> signIn({String email, String password}) async {
    try {
      await _firebaseAuth.signInWithEmailAndPassword(
          email: email, password: password);
      return "Signed in";
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future<String> signUp({String email, String password}) async {
    try {
      await _firebaseAuth.createUserWithEmailAndPassword(
          email: email, password: password);
      return "Signed up";
    } on FirebaseAuthException catch (e) {
      return e.message;
    }
  }

  Future<String> getUser() async{
    return _firebaseAuth.currentUser.email;
  }

  String returnUserEmailId() {
    return  _firebaseAuth.currentUser.email;
  }
}