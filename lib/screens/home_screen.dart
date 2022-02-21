import 'package:firebase_provider_authen/services/auth_service.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final authServices = Provider.of<AuthServices>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('Home'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text('You arein the HomeScreen'),
          Center(
            child: ElevatedButton(
              child: Text('Logout'),
              onPressed: () async {
                await authServices.signOut();
              },
            ),
          )
        ],
      ),
    );
  }
}
