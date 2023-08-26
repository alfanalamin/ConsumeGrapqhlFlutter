import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme.dart';

// ignore: must_be_immutable
class Category extends StatelessWidget {
  int? index;
  String? caption;
  bool isSelected;
  Icon? icon;
  Function? onTap;
  Category(
      {Key? key,
      this.index,
      this.caption,
      this.icon,
      this.isSelected = false,
      this.onTap})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      hoverColor: Colors.transparent,
      focusColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () {
        onTap!(index);
      },
      child: Container(
        height: 30,
        margin: EdgeInsets.only(left: index == 0 ? 0 : 13),
        padding: const EdgeInsets.symmetric(horizontal: 14),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          color: isSelected 
                  ? AppColor.neutral900.value
                  : Colors.grey.shade400
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            (icon != null
                ? Align(
                    alignment: Alignment.centerLeft,
                    child: icon,
                  )
                : const SizedBox()),
            (icon != null
                ? const SizedBox(
                    width: 8,
                  )
                : const SizedBox()),
            Text(
              (caption == ""
              ? "Semua"
              : '$caption'
              ),
              style: AppText.smallTextStyle.copyWith(
                height: 0, color: Colors.white
              ),
            ),
          ],
        ),
      ),
    );
  }
}
