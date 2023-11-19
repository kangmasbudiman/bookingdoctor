import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyB-74W4Xf9qrxco6h7FQ3JZB4to2jpfu_M",
            authDomain: "bookingdoktor-3b967.firebaseapp.com",
            projectId: "bookingdoktor-3b967",
            storageBucket: "bookingdoktor-3b967.appspot.com",
            messagingSenderId: "404307997188",
            appId: "1:404307997188:web:d704e91a200183db15fb51",
            measurementId: "G-H455BXZ0X2"));
  } else {
    await Firebase.initializeApp();
  }
}
