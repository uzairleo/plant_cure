import 'package:farmer_assistant_app/core/constants/colors.dart';
import 'package:farmer_assistant_app/core/constants/screen-util.dart';
import 'package:farmer_assistant_app/core/constants/strings.dart';
import 'package:farmer_assistant_app/core/constants/textstyle.dart';
import 'package:farmer_assistant_app/core/enums/view-state.dart';
import 'package:farmer_assistant_app/core/models/disease.dart';
import 'package:farmer_assistant_app/ui/custom_widgets/image-container.dart';
import 'package:farmer_assistant_app/ui/screens/common_disease/common-disease-view-model.dart';
import 'package:farmer_assistant_app/ui/screens/common_disease/common-pest-detail-screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:provider/provider.dart';

class CommonDiseaseScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => CommonDiseaseViewModel(),
      child: Consumer<CommonDiseaseViewModel>(
        builder: (context, model, child) => ModalProgressHUD(
          inAsyncCall: model.state == ViewState.loading,
          child: SafeArea(
            child: Scaffold(
                backgroundColor: backgroundColor,
                appBar: AppBar(
                  backgroundColor: Colors.white,
                  leading: BackButton(
                    color: Colors.black,
                    onPressed: () {
                      Get.back();
                    },
                  ),
                  title: Text(
                    "Common Pests And Diseases",
                    style: subHeadingTextStyle,
                  ),
                ),
                body: Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: ListView.builder(
                      itemCount: model.commonPests.length,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return CommonPestTile(
                          isLast: index == model.commonPests.length - 1,
                          commonPest: model.commonPests[index],
                          ontap: () {
                            print("Common Disease pressed");
                            Get.to(() => CommonPestDetailScreen(
                                model.commonPests[index]));
                          },
                        );
                      }),
                )),
          ),
        ),
      ),
    );
  }
}

class CommonPestTile extends StatelessWidget {
  bool isLast;
  CommonPest commonPest;
  final ontap;
  CommonPestTile({this.isLast = false, this.commonPest, this.ontap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
          // height: 152.h,
          color: Colors.white,
          child: Padding(
            padding: const EdgeInsets.only(
                left: 26.0, right: 26, top: 20, bottom: 0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ImageContainer(
                          assetImage: '$assets/${commonPest.imgUrl}',
                          height: 100.h,
                          width: 160.w,
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '${commonPest.title}',
                              style: bodyTextStyle.copyWith(fontSize: 14.sp),
                            ),
                            Text('${commonPest.subTitle}',
                                style:
                                    headingTextStyle.copyWith(fontSize: 16.sp)),
                          ],
                        ),
                      ],
                    ),
                    Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 16,
                    )
                  ],
                ),
                SizedBox(
                  height: 20.h,
                ),
                isLast
                    ? Container()
                    : Divider(
                        color: Colors.grey.withOpacity(0.6),
                      )
              ],
            ),
          )),
    );
  }
}
