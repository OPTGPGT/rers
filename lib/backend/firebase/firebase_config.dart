import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/foundation.dart';

Future initFirebase() async {
  if (kIsWeb) {
    await Firebase.initializeApp(
        options: const FirebaseOptions(
            apiKey: "AIzaSyCLpDkCI-eDScdt1hnIOldP_NYuZMKqFZM",
            authDomain: "rers-dcc88.firebaseapp.com",
            projectId: "rers-dcc88",
            storageBucket: "rers-dcc88.appspot.com",
            messagingSenderId: "6634655110",
            appId: "1:6634655110:web:2084825a03b4cd732f7007",
            measurementId: "G-VEHEL0KR3R"));
  } else {
    await Firebase.initializeApp();
  }
}
