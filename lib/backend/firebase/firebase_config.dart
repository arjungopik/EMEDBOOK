import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: FirebaseOptions(
            apiKey: "AIzaSyBmeq_FeMgE3dUypN4WcWqdbHEGWljjJUA",
            authDomain: "medidata-a0e41.firebaseapp.com",
            projectId: "medidata-a0e41",
            storageBucket: "medidata-a0e41.appspot.com",
            messagingSenderId: "522717038060",
            appId: "1:522717038060:web:a79eea831e8a35cd1fecc9",
            measurementId: "G-8FB8BCELZX"));
  } else {
    await Firebase.initializeApp();
  }
}
