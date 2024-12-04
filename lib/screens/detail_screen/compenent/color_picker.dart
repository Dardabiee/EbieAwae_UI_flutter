
import 'package:flutter/material.dart';
import 'package:shop_app/compenents/button_rounded.dart';
import 'package:shop_app/constant.dart';
import 'package:shop_app/model/products.dart';
import 'package:shop_app/screens/home/compenent/icon_btn_with_counter.dart';
import 'package:shop_app/size_config.dart';

class ColorPicker extends StatefulWidget {
  const ColorPicker({
    super.key,
    required this.product,
  });

  final Product product;
  @override
  State<ColorPicker> createState() => _ColorPickerState();
}

class _ColorPickerState extends State<ColorPicker> {
  int curretnSelectedColor = 0;
  int totalSelected = 0;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SizedBox(
        height: getPropScreenWidth(40),
        child: Row(
          children: [
            ...List.generate(widget.product.colors.length, (index){
              final Color color = widget.product.colors[index];
              return GestureDetector(
                onTap: () {
                  setState(() {
                    curretnSelectedColor = index;
                  });
                },
                child: ItemColor(
                  color: color,
                  isSelected: index == curretnSelectedColor,
                ));
            }),
            Spacer(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                RoundedIconBtn(icon: Icons.remove, press: totalSelected > 1 ?(){
                  setState(() {
                    if(totalSelected > 0){
                      totalSelected--;
                    }
                  });
                } : null
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Text("${totalSelected}",style: TextStyle(
                    fontWeight: FontWeight.w600,
                    // color: Colors.black
                  ),),
                ),
                RoundedIconBtn(icon: Icons.add, showShadow: true, press: (){
                  setState(() {
                    totalSelected++;
                  });
                }),
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ItemColor extends StatelessWidget {
  const ItemColor({
    super.key, required this.color, 
    this.isSelected = false
  });
  final bool isSelected;
  final Color color;

  
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: defaultDuration,
      margin: EdgeInsets.only(right: 10),
      padding: EdgeInsets.all(getPropScreenWidth(8)),
      width: getPropScreenWidth(isSelected ? 40 : 30),
      height: getPropScreenWidth(isSelected ? 40 : 30),
      decoration: BoxDecoration(
        color: color,
        border:Border.all(
          color: isSelected ? kPrimaryColor : Colors.transparent,
          width: 1.5
        ),
        shape: BoxShape.circle
      ),
    );
  }
}
