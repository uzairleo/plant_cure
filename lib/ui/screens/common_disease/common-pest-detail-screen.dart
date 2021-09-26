import 'package:bouncing_widget/bouncing_widget.dart';
import 'package:farmer_assistant_app/core/constants/screen-util.dart';
import 'package:farmer_assistant_app/core/constants/strings.dart';
import 'package:farmer_assistant_app/core/constants/textstyle.dart';
import 'package:farmer_assistant_app/core/models/crop.dart';
import 'package:farmer_assistant_app/ui/custom_widgets/image-container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class CommonPestDetailScreen extends StatelessWidget {
  final Disease commonPest;
  final cropImg;
  final color;
  final index;
  CommonPestDetailScreen(this.commonPest, this.color, this.cropImg, this.index);
  // ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: ThemeData(accentColor: color),
      child: Scaffold(
        body: NestedScrollView(
          // controller: scrollController,
          // physics: ScrollPhysics(),
          headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
            print("INNEER SCROLLED VI=======>$innerBoxIsScrolled");
            return <Widget>[
              SliverAppBar(
                leading: !innerBoxIsScrolled
                    ? closeButton()
                    : BackButton(
                        color: Colors.black,
                      ),
                backgroundColor: color,
                expandedHeight: 300.h,
                floating: false,
                pinned: true,
                flexibleSpace: FlexibleSpaceBar(
                    centerTitle: false,
                    title: !innerBoxIsScrolled
                        ? Text("")
                        : Text("${commonPest.name}",
                            style: headingTextStyle.copyWith(
                                fontSize: 18.0, color: Colors.black)),
                    background: topBar(innerBoxIsScrolled)),
              ),
            ];
          },
          body: SingleChildScrollView(
            // controller: scrollController,
            // physics: ScrollPhysics(),
            child: Column(
              children: [
                //image container with back button on stact
                // topBar(),
                Padding(
                  padding: const EdgeInsets.only(
                    left: 15,
                    right: 15,
                  ),
                  child: Column(
                    children: [
                      //about disease title,definition
                      aboutDisease(),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  closeButton() {
    return Padding(
      padding: const EdgeInsets.only(top: 0, left: 24.0),
      child: BouncingWidget(
        duration: Duration(milliseconds: 100),
        scaleFactor: 1.5,
        onPressed: () {
          Get.back();
        },
        child: Container(
          height: 26.h,
          width: 26.w,
          decoration: BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            // boxShadow: [
            //   BoxShadow(
            //     color: Colors.grey,
            //     blurRadius: 8, // has the effect of softening the shadow
            //     spreadRadius: 1.2, // has the effect of extending the shadow
            //     offset: Offset(
            //       0, // horizontal, move right 10
            //       0.4, // vertical, move down 10
            //     ),
            //   )
            // ]
          ),
          child: Center(
            child: ImageContainer(
              height: 15.h,
              width: 15.w,
              fit: BoxFit.contain,
              assetImage: "$assets/close.png",
            ),
          ),
        ),
      ),
    );
  }

  //image container with back button on stact
  topBar(isInnerScrolling) {
    return Stack(
      children: [
        Hero(
          tag: "${commonPest.name}$index",
          child: Container(
            height: 328.h,
            width: double.infinity.w,
            child: Image.asset(
              '${commonPest.imgUrls.first}',
              fit: BoxFit.cover,
            ),
          ),
        ),
        //  Image.asset('$assets/d_crop.png')),
        //
        isInnerScrolling
            ? Container()
            : Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 21, left: 24.0),
                  child: Hero(
                    tag: "$cropImg",
                    child: Container(
                      height: 60.h,
                      width: 60.w,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: ImageContainer(
                            height: 36.h,
                            width: 36.w,
                            fit: BoxFit.contain,
                            assetImage: cropImg //"$assets/close.png",
                            ),
                      ),
                    ),
                  ),
                ),
              )
      ],
    );
  }

  //about disease title,definition
  aboutDisease() {
    return Padding(
      padding: const EdgeInsets.only(top: 13, bottom: 20.0),
      child: Column(
        children: [
          //title
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: Text(
                  "${commonPest.name}",
                  // "Shothole Disease",
                  style: headingTextStyle.copyWith(
                    fontSize: 24,
                  ),
                ),
              )
            ],
          ),
          Divider(
            color: Colors.grey.withOpacity(0.8),
          ),
          SizedBox(
            height: 10.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: Text(
                  "Check if these symptoms apear on\n your crop",
                  // "Shothole Disease",
                  style: headingTextStyle.copyWith(
                    fontSize: 19,
                  ),
                ),
              )
            ],
          ),

          SizedBox(
            height: 14.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: Text(
                  "${commonPest.symptoms}",
                  // "Shot hole disease (also called Coryneum blight) is a  serious fungal disease that creates BB-sized holes in leaves,rough areas on fruit, and concentric lesions on branches. The pathogen that causes shot hole disease is Wilsonomyces carpophilus.",
                  style: bodyTextStyle.copyWith(
                      fontSize: 16, color: Color(0XFF373434)),
                ),
              )
            ],
          ),
          SizedBox(
            height: 14.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "favorable conditions".toUpperCase(),
                // "Shothole Disease",
                style: headingTextStyle.copyWith(
                  fontSize: 19,
                ),
              )
            ],
          ),

          SizedBox(
            height: 14.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: Text(
                  "${commonPest.favorableConditions}",
                  // "Shot hole disease (also called Coryneum blight) is a  serious fungal disease that creates BB-sized holes in leaves,rough areas on fruit, and concentric lesions on branches. The pathogen that causes shot hole disease is Wilsonomyces carpophilus.",
                  style: bodyTextStyle.copyWith(
                      fontSize: 16, color: Color(0XFF373434)),
                ),
              )
            ],
          ),
          SizedBox(
            height: 14.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "TREATMENT",
                // "Shothole Disease",
                style: headingTextStyle.copyWith(
                  fontSize: 19,
                ),
              )
            ],
          ),

          SizedBox(
            height: 14.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: Text(
                  "${commonPest.treatments}",
                  // "Shot hole disease (also called Coryneum blight) is a  serious fungal disease that creates BB-sized holes in leaves,rough areas on fruit, and concentric lesions on branches. The pathogen that causes shot hole disease is Wilsonomyces carpophilus.",
                  style: bodyTextStyle.copyWith(
                      fontSize: 16, color: Color(0XFF373434)),
                ),
              )
            ],
          )
        ],
      ),
    );
  }

  // //about symptom and other cause having title and description
  // symptoms() {
  //   return Padding(
  //     padding: const EdgeInsets.only(bottom: 20.0),
  //     child: Column(
  //       children: [
  //         //title
  //         Row(
  //           mainAxisAlignment: MainAxisAlignment.start,
  //           children: [
  //             Text(
  //               "Symptoms",
  //               style: headingTextStyle.copyWith(
  //                 fontSize: 24,
  //               ),
  //             )
  //           ],
  //         ),
  //         SizedBox(
  //           height: 10.0,
  //         ),
  //         Row(
  //           mainAxisAlignment: MainAxisAlignment.start,
  //           children: [
  //             Flexible(
  //               child: Text(
  //                 "${model.disease.symptoms ?? ""}",
  //                 // "The fungal pathogen Wilsonomyces carpophilus affects members of the Prunus genera. Almond, apricot, nectarine, peach, prune and cherry trees can be affected. Both edible and ornamental varieties are vulnerable to Infection.[2] Almost all over-ground parts of the plants are affected including the fruits, buds and the stems, but the damage is most noticeable on the leaves.",
  //                 style: bodyTextStyle.copyWith(
  //                     fontSize: 15, color: Color(0XFF373434)),
  //               ),AA
  //             )
  //           ],
  //         )
  //       ],
  //     ),
  //   );
  // }
}
