import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'widgets/stacklist_item_widget.dart';
import 'widgets/textlist_item_widget.dart';

class Page2OptionThreeScreen extends StatelessWidget {
  const Page2OptionThreeScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 82.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _buildSettingsStack(context),
                      SizedBox(height: 30.v),
                      _buildHajiDefinitionStack(context),
                      SizedBox(height: 10.v),
                      _buildTextList(context),
                      SizedBox(height: 6.v),
                      CustomImageView(
                        imagePath: ImageConstant.imgArrowDown,
                        height: 20.v,
                        width: 29.h,
                      ),
                      SizedBox(height: 8.v),
                      _buildStackList(context),
                      SizedBox(height: 22.v),
                      _buildHikmahHajiRow(context)
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildSettingsStack(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 5.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(
              top: 24.v,
              bottom: 71.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    height: 45.v,
                    width: 38.h,
                    child: Stack(
                      alignment: Alignment.topLeft,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgSettings,
                          height: 21.adaptSize,
                          width: 21.adaptSize,
                          alignment: Alignment.bottomRight,
                          margin: EdgeInsets.only(right: 6.h),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgSettings,
                          height: 32.v,
                          width: 31.h,
                          alignment: Alignment.topLeft,
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgSettingsCyan300,
                          height: 18.v,
                          width: 19.h,
                          alignment: Alignment.centerRight,
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 121.v),
                CustomImageView(
                  imagePath: ImageConstant.imgContrast,
                  height: 92.v,
                  width: 33.h,
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 27.h),
            child: Column(
              children: [
                SizedBox(
                  height: 258.v,
                  width: 267.h,
                  child: Stack(
                    alignment: Alignment.bottomRight,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: SizedBox(
                          height: 258.v,
                          width: 267.h,
                          child: Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgA9a273ebd0513c1,
                                height: 258.v,
                                width: 267.h,
                                alignment: Alignment.center,
                              ),
                              Align(
                                alignment: Alignment.bottomRight,
                                child: Padding(
                                  padding: EdgeInsets.only(
                                    left: 18.h,
                                    right: 1.h,
                                    bottom: 18.v,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgClose,
                                        height: 24.v,
                                        width: 23.h,
                                        margin: EdgeInsets.only(left: 63.h),
                                      ),
                                      SizedBox(height: 122.v),
                                      Container(
                                        decoration:
                                            AppDecoration.outlineBlack9003f,
                                        child: Text(
                                          "Hajj.Elev",
                                          style: theme.textTheme.displayMedium,
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgInfinity,
                        height: 29.v,
                        width: 30.h,
                        alignment: Alignment.bottomRight,
                        margin: EdgeInsets.only(bottom: 37.v),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 71.v),
                Container(
                  decoration: AppDecoration.outlineBlack9003f1,
                  child: Text(
                    "Pembinaan Haji",
                    style: theme.textTheme.headlineSmall,
                  ),
                )
              ],
            ),
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 5.v,
              bottom: 77.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgMegaphone,
                  height: 25.v,
                  width: 28.h,
                  alignment: Alignment.centerRight,
                ),
                SizedBox(height: 217.v),
                CustomImageView(
                  imagePath: ImageConstant.imgCloseCyan300,
                  height: 29.adaptSize,
                  width: 29.adaptSize,
                  alignment: Alignment.center,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHajiDefinitionStack(BuildContext context) {
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
        padding: EdgeInsets.symmetric(vertical: 6.v),
        decoration: AppDecoration.outlineCyan.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Stack(
          alignment: Alignment.bottomCenter,
          children: [
            CustomImageView(
              imagePath: ImageConstant.img1cc4bb48bd28838,
              height: 73.v,
              width: 78.h,
              alignment: Alignment.topCenter,
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                decoration: AppDecoration.outlineBlack9003f,
                child: Text(
                  "Definisi Haji",
                  style: theme.textTheme.titleSmall,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTextList(BuildContext context) {
  return SizedBox(
    height: 98.v,
    child: ListView.separated(
      padding: EdgeInsets.only(
        left: 27.h,
        right: 22.h,
      ),
      scrollDirection: Axis.horizontal,
      separatorBuilder: (context, index) {
        return SizedBox(
          width: 22.h,
        );
      },
      itemCount: 3,
      itemBuilder: (context, index) {
        // Berikan nilai teks dan path gambar yang berbeda untuk setiap item
        String itemText = '';
        String itemImagePath = '';
        if (index == 0) {
          itemText = "Hak Jemaah ";
          itemImagePath = ImageConstant.imgA1ede62066b1eec;
        } else if (index == 1) {
          itemText = "Wajib Haji";
          itemImagePath = ImageConstant.img3dc301d2f4329e3;
        } else if (index == 2) {
          itemText = "Tata Cara";
          itemImagePath = ImageConstant.imgC52dac34c897dbf;
        }
        return TextlistItemWidget(text: itemText, imagePath: itemImagePath);
      },
    ),
  );
}



  /// Section Widget
  Widget _buildStackList(BuildContext context) {
  return Padding(
    padding: EdgeInsets.only(
      left: 27.h,
      right: 24.h,
    ),
    child: ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (context, index) {
        return SizedBox(
          height: 13.v,
        );
      },
      itemCount: 2,
      itemBuilder: (context, index) {
        String itemText = '';
        String itemImagePath = '';
        if (index == 0) {
          itemText = "Tata Cara Haji Wanita ";
          itemImagePath = ImageConstant.imgF0dc17d287c21c9;
        } else if (index == 1) {
          itemText = "Larangan Ihram";
          itemImagePath = ImageConstant.img1a5c29167e6a458;
        }
        return StacklistItemWidget(text: itemText, imagePath: itemImagePath);
      },
    ),
  );
}


  /// Section Widget
  Widget _buildHikmahHajiRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
        left: 27.h,
        right: 24.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.only(bottom: 1.v),
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
              width: 175.h,
              padding: EdgeInsets.symmetric(horizontal: 25.h),
              decoration: AppDecoration.outlineCyan.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img6e6523009a70450,
                    height: 88.v,
                    width: 113.h,
                    alignment: Alignment.topRight,
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 1.v),
                      decoration: AppDecoration.outlineBlack9003f,
                      child: Text(
                        "Hikmah Haji",
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Card(
            clipBehavior: Clip.antiAlias,
            elevation: 0,
            margin: EdgeInsets.only(left: 21.h),
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
              width: 183.h,
              padding: EdgeInsets.symmetric(horizontal: 42.h),
              decoration: AppDecoration.outlineCyan.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder10,
              ),
              child: Stack(
                alignment: Alignment.topLeft,
                children: [
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Container(
                      margin: EdgeInsets.only(bottom: 1.v),
                      decoration: AppDecoration.outlineBlack9003f,
                      child: Text(
                        "Doa & Niat",
                        style: theme.textTheme.titleSmall,
                      ),
                    ),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgA0965b2fb9a2e1e,
                    height: 75.v,
                    width: 83.h,
                    alignment: Alignment.topLeft,
                    margin: EdgeInsets.only(left: 1.h),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
