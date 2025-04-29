// import 'package:GossipPoint/dash_chat_2.dart';
// import 'package:GossipPoint/pages/home.dart';
import 'package:GossipPoint/pages/chat_page.dart';
import 'package:GossipPoint/pages/home_page.dart';
import 'package:GossipPoint/pages/onboarding.dart';
import 'package:GossipPoint/pages/profile.dart';
import 'package:firebase_core/firebase_core.dart';

// import 'package:GossipPoint/pages/onboarding.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: FirebaseOptions(
          apiKey: "AIzaSyBo8dd5UxPfE2KpTUjHpDEt3QBefmubLs8",
          appId: "1:781777436407:android:b85effdf8936d3c0855df2",
          messagingSenderId: "781777436407",
          projectId: "chatup-9c474"));

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Dash Chat Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.tealAccent),
        ),
        home:Onbpoarding());
  }
}
