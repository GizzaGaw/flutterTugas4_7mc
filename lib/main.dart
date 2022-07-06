import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'home_list.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    // options: const FirebaseOptions(
    //     apiKey: "AIzaSyB1dW-X5MnIVbktbSeyeNinfvrsV0G8WYo",
    //     authDomain: "flutterfirebase-2be5d.firebaseapp.com",
    //     databaseURL:
    //         "https://flutterfirebase-2be5d-default-rtdb.asia-southeast1.firebasedatabase.app",
    //     projectId: "flutterfirebase-2be5d",
    //     storageBucket: "flutterfirebase-2be5d.appspot.com",
    //     messagingSenderId: "688280762161",
    //     appId: "1:688280762161:web:cceb1284e1cd0bfcb86210",
    //     measurementId: "G-C8CXTNMWFG"),
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          primarySwatch: Colors.blue,
        ),
        home: const HomeList());
  }
}
