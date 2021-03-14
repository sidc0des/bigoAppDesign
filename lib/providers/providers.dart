import 'package:bingo/providers/auth_provider_firebase.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Providers {
  static final authProvider = Provider<AuthProvider>((ref) {
    return AuthProvider();
  });
}
