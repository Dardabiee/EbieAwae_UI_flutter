import 'package:flutter/material.dart';
import 'package:shop_app/screens/complete_profile/compenents/body.dart';

class CompleteScreenProfile extends StatelessWidget {
  static String routeName = '/complete_profile';
  const CompleteScreenProfile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Complete Profile'),
        centerTitle: true,
      ),
      body: Body(
        
      ),
    );
  }
}