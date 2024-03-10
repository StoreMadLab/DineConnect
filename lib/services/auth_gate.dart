import 'package:dineconnect/core/app_export.dart';
import 'package:dineconnect/presentation/home_screen/home_screen.dart';
import 'package:dineconnect/presentation/launcherScreen/launcher_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class AuthGate extends StatelessWidget {
  const AuthGate({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (BuildContext context, AsyncSnapshot<User?> snapshot) {
          //user is logged in
          if(snapshot.hasData){
            return HomeScreen();
          }
          //user is not logged in
          else{
            return const LauncherScreen();
          }
        },
      ),
    );
  }
}
