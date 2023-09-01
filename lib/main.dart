import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:otp/screens/OTP/otp_screen.dart';
import 'package:otp/screens/constants/app_theme.dart';
import 'package:otp/screens/home_screen.dart';
import 'package:otp/screens/phone_number/phone_number_form.dart';
import 'package:otp/services/auth_repo.dart';
import 'package:otp/services/auth_repo_impl.dart';
import 'package:provider/provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Provider<AuthRepo>.value(
      value: AuthRepoImp(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: theme(),
        home: const PhoneNumberForm(),
        routes: {
          OtpScreen.routeName: (context) => const OtpScreen(),
          HomeScreen.routeName: (context) => const HomeScreen(),
        },
      ),
    );
  }
}
