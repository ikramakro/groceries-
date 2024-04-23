import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class VerificationPage extends StatefulWidget {
  const VerificationPage({
    super.key,
  });

  @override
  State<VerificationPage> createState() => _VerificationPageState();
}

class _VerificationPageState extends State<VerificationPage> {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Scaffold(
            body: Center(
              child: CircularProgressIndicator(),
            ),
          );
        } else if (snapshot.hasData) {
          User? user = snapshot.data;
          if (user!.emailVerified) {
            return HomeScreen();
          } else {
            return buildVerificationUI(context);
          }
        } else {
          // User is not authenticated, handle as needed
          // For example, you might want to navigate to a login screen
          return const Scaffold(
            body: Center(
              child: Text('User is not authenticated'),
            ),
          );
        }
      },
    );
  }

  Widget buildVerificationUI(BuildContext context) {
    // This is the UI for the verification screen
    return Scaffold(
      appBar: AppBar(
        title: const Text('Verification Screen'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Text('Check Your email address for verification'),
            ElevatedButton(
              onPressed: () async {
                User user = FirebaseAuth.instance.currentUser!;
                await user.sendEmailVerification();
              },
              child: const Text('Resed Email'),
            ),
          ],
        ),
      ),
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: const Center(
        child: Text('Welcome Home!'),
      ),
    );
  }
}
