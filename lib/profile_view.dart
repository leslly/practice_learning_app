import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(10.0),
          child: Container(

          ),
        ),
      ),
      bottomNavigationBar: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
          ),
        ),
      ),
    );
  }
}
