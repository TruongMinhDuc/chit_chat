import 'package:chit_chat/common/widgets/error.dart';
import 'package:chit_chat/features/auth/screens/login_screen.dart';
import 'package:chit_chat/features/auth/screens/otp_screen.dart';
import 'package:chit_chat/features/auth/screens/user_infomation_screen.dart';
import 'package:chit_chat/features/select_contacts/screens/select_contacts_screen.dart';
import 'package:chit_chat/screens/mobile_chat_screen.dart';
import 'package:flutter/material.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LoginScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const LoginScreen(),
      );
    case OTPScreen.routeName:
      final verificationId = settings.arguments as String;
      return MaterialPageRoute(
        builder: (context) => OTPScreen(
          verificationId: verificationId,
        ),
      );
    case UserInformationScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const UserInformationScreen(),
      );
    case SelectContactsScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const SelectContactsScreen(),
      );
    case MobileChatScreen.routeName:
      return MaterialPageRoute(
        builder: (context) => const MobileChatScreen(),
      );
    default:
      return MaterialPageRoute(
        builder: (context) => const Scaffold(
          body: ErrorScreen(error: 'This page doesn`t exist'),
        ),
      );
  }
}
