import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyDyDSpXl4gYbLFLC4fWmunr4gHyqH4ON-Y",
            authDomain: "gymtrack-cr.firebaseapp.com",
            projectId: "gymtrack-cr",
            storageBucket: "gymtrack-cr.firebasestorage.app",
            messagingSenderId: "134769869166",
            appId: "1:134769869166:web:7ade67792e3f8e212d417f",
            measurementId: "G-FC11FZS8SN"));
  } else {
    await Firebase.initializeApp();
  }
}
