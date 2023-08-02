import 'package:flutter/material.dart';
import 'package:flutter_application_1/theme.dart';

class Category extends StatelessWidget {
  int index;
  String caption;
  bool isSelected;
  Icon? icon;
  Function(int)? onTap;

  Category({
    Key? key,
    required this.index,
    required this.caption,
    this.icon,
    this.isSelected = false,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        if (onTap != null) {
          onTap!(index);
        }
      },
      child: Container(
        height: 30,
        margin: EdgeInsets.only(left: index == 0 ? 13 : 0, right: 13),
        padding: const EdgeInsets.symmetric(horizontal: 14),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(14),
          border: Border.all(
            color: isSelected ? Colors.white : Colors.black,
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            if (icon != null) ...[
              Align(
                alignment: Alignment.centerLeft,
                child: icon!,
              ),
              const SizedBox(width: 8),
            ],
            Text(
              '$caption',
              style: AppText.smallTextStyle.copyWith(
                height: 0,
                color: isSelected ? Colors.white : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
