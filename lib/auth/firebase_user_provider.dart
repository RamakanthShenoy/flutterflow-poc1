import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

import 'auth_util.dart';

class Poc1FirebaseUser {
  Poc1FirebaseUser(this.user);
  User? user;
  bool get loggedIn => user != null;
}

Poc1FirebaseUser? currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<Poc1FirebaseUser> poc1FirebaseUserStream() => FirebaseAuth.instance
        .authStateChanges()
        .debounce((user) => user == null && !loggedIn
            ? TimerStream(true, const Duration(seconds: 1))
            : Stream.value(user))
        .map<Poc1FirebaseUser>(
      (user) {
        currentUser = Poc1FirebaseUser(user);
        updateUserJwtTimer(user);
        return currentUser!;
      },
    );
