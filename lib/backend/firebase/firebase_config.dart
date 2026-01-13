import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBOZ7XnqJ6LaNtTziR4-lsr7nIp9QP51Vs",
            authDomain: "tino-t-e-a-8wxpac.firebaseapp.com",
            projectId: "tino-t-e-a-8wxpac",
            storageBucket: "tino-t-e-a-8wxpac.firebasestorage.app",
            messagingSenderId: "954690373529",
            appId: "1:954690373529:web:f4086bcb30e8fbef8df508"));
  } else {
    await Firebase.initializeApp();
  }
}
