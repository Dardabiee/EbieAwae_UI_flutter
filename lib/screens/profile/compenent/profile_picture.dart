import 'package:flutter/material.dart';
import 'package:shop_app/constant.dart';
import 'package:shop_app/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SizedBox(
        width: getPropScreenWidth(115),
        height: getPropScreenWidth(115),
        child: Stack(
          clipBehavior: Clip.none,
          fit: StackFit.expand, //untuk menyesuaikan ukurannya
          children: [
            const CircleAvatar(
              backgroundImage: AssetImage("assets/images/Profile Image.png"),
            ),
            Positioned(
              right: -16,
              bottom: 0,
              child: Container(
                padding: const EdgeInsets.all(12),
                height: getPropScreenWidth(46),
                width: getPropScreenWidth(46),
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: const Color(0xfff5f6f9),
                  border: Border.all(
                    color: Colors.white
                  )
                ),
                child: SvgPicture.asset("assets/icons/Camera Icon.svg"),
              )
            )
          ],
        ),
      ),
    );
  }
}