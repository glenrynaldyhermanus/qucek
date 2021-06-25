import 'package:firebase_auth/firebase_auth.dart';
import 'package:rxdart/rxdart.dart';

class QucekFirebaseUser {
  QucekFirebaseUser(this.user);
  final User user;
  bool get loggedIn => user != null;
}

QucekFirebaseUser currentUser;
bool get loggedIn => currentUser?.loggedIn ?? false;
Stream<QucekFirebaseUser> qucekFirebaseUserStream() => FirebaseAuth.instance
    .authStateChanges()
    .debounce((user) => user == null && !loggedIn
        ? TimerStream(true, const Duration(seconds: 1))
        : Stream.value(user))
    .map<QucekFirebaseUser>((user) => currentUser = QucekFirebaseUser(user));
