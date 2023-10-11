import 'package:firebase_auth/firebase_auth.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  String? get phoneNumber => null;

  //signin using phone
  Future signInPhone() async {
    try{
      Future<ConfirmationResult> result = _auth.signInWithPhoneNumber(phoneNumber!);
      //User user = result.user;
    }catch(e){

    }
  }
}