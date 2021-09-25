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
  final color;
  CommonPestDetailScreen(this.commonPest, this.color);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        // headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        //   return <Widget>
        slivers: [
          SliverAppBar(
            leading: closeButton(),
            backgroundColor: color,
            expandedHeight: 300.h,
            floating: false,
            pinned: true,
            flexibleSpace: FlexibleSpaceBar(
                centerTitle: false,
                title: Text("${commonPest.name}",
                    style: headingTextStyle.copyWith(
                        fontSize: 18.0, color: Colors.black)),
                background: topBar()),
          ),
          SliverToBoxAdapter(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  //       //image container with back button on stact
                  //       // topBar(),

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
          )
        ],
        // ;
        // },
        // body:
        //  SingleChildScrollView(
        //   child: Column(
        //     children: [
        //       //image container with back button on stact
        //       // topBar(),

        //       Padding(
        //         padding: const EdgeInsets.only(
        //           left: 15,
        //           right: 15,
        //         ),
        //         child: Column(
        //           children: [
        //             //about disease title,definition
        //             aboutDisease(),
        //           ],
        //         ),
        //       )
        //     ],
        //   ),
        // ),
      ),
    );
  }

  closeButton() {
    return InkWell(
      onTap: () {
        Get.back();
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 0, left: 24.0),
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
  topBar() {
    return Stack(
      children: [
        Container(
          height: 328.h,
          width: double.infinity.w,
          child: Image.asset(
            '${commonPest.imgUrls.first}',
            fit: BoxFit.cover,
          ),
        ),
        //  Image.asset('$assets/d_crop.png')),
        //
        // Align(
        //   alignment: Alignment.topLeft,
        //   child: InkWell(
        //     onTap: () {
        //       Get.back();
        //     },
        //     child: Padding(
        //       padding: const EdgeInsets.only(top: 21, left: 24.0),
        //       child: Container(
        //         height: 40.h,
        //         width: 40.w,
        //         decoration: BoxDecoration(
        //           color: Colors.white,
        //           shape: BoxShape.circle,
        //         ),
        //         child: Center(
        //           child: ImageContainer(
        //             height: 18.h,
        //             width: 18.w,
        //             fit: BoxFit.contain,
        //             assetImage: "$assets/close.png",
        //           ),
        //         ),
        //       ),
        //     ),
        //   ),
        // )
      ],
    );
  }

  //about disease title,definition
  aboutDisease() {
    return Padding(
      padding: const EdgeInsets.only(top: 33, bottom: 20.0),
      child: Column(
        children: [
          //title
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "${commonPest.name}",
                // "Shothole Disease",
                style: headingTextStyle.copyWith(
                  fontSize: 24,
                ),
              )
            ],
          ),
          Divider(
            color: Colors.grey.withOpacity(0.6),
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
