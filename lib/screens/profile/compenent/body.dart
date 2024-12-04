import 'package:flutter/material.dart';
import 'package:shop_app/constant.dart';
import 'package:shop_app/screens/profile/compenent/item_button_profile.dart';
import 'package:shop_app/screens/profile/compenent/profile_picture.dart';
import 'package:shop_app/screens/sign_in/sign_in_screen.dart';
import 'package:shop_app/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:provider/provider.dart';
import 'package:shop_app/state_managements/auth_provider.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          const ProfilePicture(),
           SizedBox(height: getPropScreenWidth(20),),
          Consumer<AuthProvider>(builder: (context, email, child)=>Text(email.savedEmail, style: TextStyle(fontSize: 18),)),
          SizedBox(height: getPropScreenWidth(20),),
          ItemButtonProfile(
          svgIcon: 'assets/icons/User Icon.svg',
          title: "My Account", 
          press: (){},
          ),
          ItemButtonProfile(
          svgIcon: 'assets/icons/Bell.svg',
          title: "Notification", 
          press: (){},
          ),
          ItemButtonProfile(
          svgIcon: 'assets/icons/Settings.svg',
          title: "Settings", 
          press: (){},
          ),
          ItemButtonProfile(
          svgIcon: 'assets/icons/Question mark.svg',
          title: "Help center", 
          press: (){},
          ),
          ItemButtonProfile(
          svgIcon: 'assets/icons/Log out.svg',
          title: "Log out", 
          press: (){
            Provider.of<AuthProvider>(context, listen: false).setAuth(false);
            Navigator.pushNamedAndRemoveUntil(context, SignInScreen.routeName,
            (Route<dynamic> route) => false  );
            
          },
          ),
        ],
      ),
    );
  }
}

