import 'package:farmer_assistant_app/core/constants/colors.dart';
import 'package:farmer_assistant_app/core/constants/screen-util.dart';
import 'package:farmer_assistant_app/core/constants/strings.dart';
import 'package:farmer_assistant_app/core/constants/textstyle.dart';
import 'package:farmer_assistant_app/core/enums/view-state.dart';
import 'package:farmer_assistant_app/core/models/crop.dart';
// import 'package:farmer_assistant_app/core/models/disease.dart';
import 'package:farmer_assistant_app/ui/custom_widgets/image-container.dart';
import 'package:farmer_assistant_app/ui/screens/common_disease/common-disease-view-model.dart';
import 'package:farmer_assistant_app/ui/screens/common_disease/common-pest-detail-screen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:provider/provider.dart';

class CommonDiseaseScreen extends StatelessWidget {
  final Crop crop;
  CommonDiseaseScreen({this.crop});
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
                  title: Row(
                    children: [
                      Hero(
                        tag: "${crop.imgUrl}",
                        child: Container(
                          height: 50.h,
                          width: 50.w,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(
                                color: crop.color,
                                width: 0.8,
                              ),
                              image: DecorationImage(
                                  fit: BoxFit.contain,
                                  image: AssetImage(crop.imgUrl))),
                          // child: ImageContainer(
                          //   height: 18.h,
                          //   width: 18.w,
                          //   assetImage: crop.imgUrl,
                          //   fit: BoxFit.contain,
                          // ),
                        ),
                      ),
                      SizedBox(
                        width: 18.w,
                      ),
                      Text(
                        "Common Pests\n And Diseases",
                        textAlign: TextAlign.center,
                        style: subHeadingTextStyle.copyWith(
                            fontSize: 15.sp, fontWeight: FontWeight.w600),
                      ),
                    ],
                  ),
                ),
                body: Padding(
                  padding: const EdgeInsets.only(top: 30.0),
                  child: ListView.builder(
                      itemCount: crop
                          .commonDiseases.length, // model.commonPests.length,
                      physics: BouncingScrollPhysics(),
                      itemBuilder: (context, index) {
                        return CommonPestTile(
                          index: index,
                          isLast: index == crop.commonDiseases.length - 1,
                          disease: crop.commonDiseases[index],
                          ontap: () {
                            print("Common Disease pressed");
                            Get.to(
                              () => CommonPestDetailScreen(
                                  crop.commonDiseases[index],
                                  crop.color,
                                  crop.imgUrl,
                                  index),
                            );
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
  final bool isLast;
  final Disease disease;
  final index;
  final ontap;
  CommonPestTile({this.isLast = false, this.disease, this.ontap, this.index});
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
                    Expanded(
                      child: Row(
                        children: [
                          Hero(
                            tag: "${disease.name}$index",
                            child: ImageContainer(
                              assetImage: '${disease.imgUrls.first}',
                              height: 100.h,
                              width: 160.w,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: 10.w,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                // Text(
                                //   '${disease.name}',
                                //   style: bodyTextStyle.copyWith(fontSize: 14.sp),
                                // ),
                                Text('${disease.name}',
                                    style: headingTextStyle.copyWith(
                                        fontSize: 17.sp)),
                                Text(
                                  '${disease.symptoms}',
                                  overflow: TextOverflow.ellipsis,
                                  style: bodyTextStyle.copyWith(
                                    fontSize: 11.sp,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
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
