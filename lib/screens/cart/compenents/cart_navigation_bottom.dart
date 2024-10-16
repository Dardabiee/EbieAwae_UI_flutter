
import 'package:flutter/material.dart';
import 'package:shop_app/compenents/my_default_button.dart';
import 'package:shop_app/size_config.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CartBottomNavigation extends StatelessWidget {
  const CartBottomNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        vertical: 15,
        horizontal: 30
        ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30)
        ),
        boxShadow: [
          BoxShadow(
            offset: const Offset(0, -15),
            blurRadius: 20,
            color: Color(0xffdadada).withOpacity(0.30)
          )
        ]
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
         Row(
          children: [
            Container(
              padding: EdgeInsets.all(10),
              height: getPropScreenWidth(40),
              width: getPropScreenWidth(40),
              decoration: BoxDecoration(
                color: Color(0xfff5f6f9),
                borderRadius: BorderRadius.circular(15)
              ),
              child: SvgPicture.asset("assets/icons/receipt.svg"),
            ),
            const Spacer(),
            const Text("Add voucher code"),
            const SizedBox(width: 10,),
            const Icon(Icons.arrow_forward_ios_outlined,
            size: 12,)
          ],
         ),
        SizedBox(height: getPropScreenWidth(20),),
        Row(
          children: [
            const Text.rich(
             TextSpan(
               children: [
                 TextSpan(
                    text: "Total:\n ",
                 ),
                 TextSpan(
                     text: "\$337.15",
                     style: TextStyle(
                     fontSize: 16,
                     color: Colors.black
                 ),
                ),
               ],
              ),
            ),
            const Spacer(),
            SizedBox(
              width: getPropScreenWidth(150),
                child: MyDefaultButton(text: "Check out", press: (){}))
          ],
        )
        ],
      ),
    );
  }
}