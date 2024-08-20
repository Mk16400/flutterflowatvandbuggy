import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyDVSaQpbP7_SVlXIKC_6LUf2V7zBsFEwdk",
            authDomain: "atvandbuggy-dev.firebaseapp.com",
            projectId: "atvandbuggy-dev",
            storageBucket: "atvandbuggy-dev.appspot.com",
            messagingSenderId: "755949396350",
            appId: "1:755949396350:web:d366ad585b35f46216d32f",
            measurementId: "G-GZNE66K26V"));
  } else {
    await Firebase.initializeApp();
  }
}
