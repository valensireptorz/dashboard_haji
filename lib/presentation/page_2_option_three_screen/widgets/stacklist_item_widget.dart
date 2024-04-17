import 'package:flutter/material.dart';
import '../../../core/app_export.dart'; // ignore: must_be_immutable

class StacklistItemWidget extends StatelessWidget {
  final String text;
  final String imagePath;
  
  const StacklistItemWidget({
    Key? key,
    required this.text,
    required this.imagePath,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      elevation: 0,
      margin: EdgeInsets.all(0),
      color: appTheme.whiteA700,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: appTheme.cyan300,
          width: 3.h,
        ),
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Container(
        height: 95.v,
        width: 379.h,
        padding: EdgeInsets.symmetric(
          horizontal: 87.h,
          vertical: 5.v,
        ),
        decoration: AppDecoration.outlineCyan.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            CustomImageView(
              imagePath: imagePath,
              height: 75.v,
              width: 72.h,
              alignment: Alignment.topCenter,
            ),
            Align(
              alignment: Alignment.bottomLeft,
              child: Container(
                 padding: EdgeInsets.only(left: 50.h),
                decoration: AppDecoration.outlineBlack9003f,
                child: Text(
                  text,
                  style: theme.textTheme.titleSmall,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

