import 'dart:async';
import 'package:farmer_assistant_app/core/constants/screen-util.dart';
import 'package:farmer_assistant_app/core/constants/strings.dart';
import 'package:farmer_assistant_app/core/constants/textstyle.dart';
import 'package:farmer_assistant_app/core/models/disease.dart';
import 'package:farmer_assistant_app/ui/custom_widgets/image-container.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:assets_audio_player/assets_audio_player.dart';

class SuggestedTreatmentScreen extends StatefulWidget {
  final Disease disease;
  SuggestedTreatmentScreen(this.disease);

  @override
  _SuggestedTreatmentScreenState createState() =>
      _SuggestedTreatmentScreenState();
}

class _SuggestedTreatmentScreenState extends State<SuggestedTreatmentScreen> {
  // AssetsAudioPlayer audioPlayer =
  //     AssetsAudioPlayer(); // this will create a instance object of a class
  // @override
  // void initState() {
  //   super.initState();
  //   initAudio();
  // }

  // initAudio() async {
  //   await loadFile();
  //   // await playFile();
  // }

  // playFile() async {
  //   try {
  //     Future.delayed(Duration(seconds: 5), () {
  //       audioPlayer.play();
  //     });
  //   } catch (e) {
  //     print("Exception/play==>$e");
  //   }
  // }

  // loadFile() async {
  //   try {
  //     await audioPlayer.open(
  //       Audio('assets/audio/sample.mp3'),
  //       autoStart: false,
  //       showNotification: true,
  //       forceOpen: true,
  //       volume: 4,
  //       headPhoneStrategy: HeadPhoneStrategy.pauseOnUnplugPlayOnPlug,
  //     );
  //   } catch (e) {
  //     print("Exception/loadfile==>$e");
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: BackButton(
            color: Colors.black,
            onPressed: () {
              Get.back();
            },
          ),
          actions: [
            // IconButton(
            //     icon: ImageContainer(
            //       assetImage: "$assets/mic.png",
            //       height: 36.h,
            //       width: 36.w,
            //     ),
            //     // Icon(
            //     //   Icons.mic,
            //     //   color: Colors.black,
            //     // ),
            //     onPressed: () async {
            //       print("voice on ");
            //       // await playFile();
            //       Get.dialog(SpeakDialog());
            //     })
          ],
          title: Text(
            "Suggested Treatment ",
            style: bodyTextStyle,
          ),
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
                left: 25, right: 25, top: 60, bottom: 80.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "TREATMENET",
                  style: headingTextStyle,
                ),
                // Text(
                //   // 'Biological Treatment',
                //   "${widget.disease.suggestedTreatment.title}",
                //   style: headingTextStyle,
                // ),
                SizedBox(
                  height: 20.0,
                ),
                Text(
                  // "Shot hole is managed primarily with fungicide treatments to protect buds and twigs from infection. In orchards where twig infections are prevalent, the efficacy of the dormant treatment can be improved by pruning out and destroying infected wood.Shot hole is managed primarily with fungicide treatments to protect buds and twigs from infection. In orchards where twig infections are prevalent, the efficacy of the dormant treatment can be improved by pruning out and destroying infected wood.Shot hole is managed primarily with fungicide treatments to protect buds and twigs from infection. In orchards where twig infections are prevalent, the efficacy of the dormant treatment can be improved by pruning out and destroying infected wood.Shot hole is managed primarily with fungicide treatments to protect buds and twigs from infection. In orchards where twig infections are prevalent, the efficacy of the dormant treatment can be improved by pruning out and destroying infected wood.Shot hole is managed primarily with fungicide treatments to protect buds and twigs from infection. In orchards where twig infections are prevalent, the efficacy of the dormant treatment can be improved by pruning out and destroying infected wood.Shot hole is managed primarily with fungicide treatments to protect buds and twigs from infection. In orchards where twig infections are prevalent, the efficacy of the dormant treatment can be improved by pruning out and destroying infected wood.Shot hole is managed primarily with fungicide treatments to protect buds and twigs from infection. In orchards where twig infections are prevalent, the efficacy of the dormant treatment can be improved by pruning out and destroying infected wood.Shot hole is managed primarily with fungicide treatments to protect buds and twigs from infection. In orchards where twig infections are prevalent, the efficacy of the dormant treatment can be improved by pruning out and destroying infected wood.Shot hole is managed primarily with fungicide treatments to protect buds and twigs from infection. In orchards where twig infections are prevalent, the efficacy of the dormant treatment can be improved by pruning out and destroying infected wood.Shot hole is managed primarily with fungicide treatments to protect buds and twigs from infection. In orchards where twig infections are prevalent, the efficacy of the dormant treatment can be improved by pruning out and destroying infected wood.Shot hole is managed primarily with fungicide treatments to protect buds and twigs from infection. In orchards where twig infections are prevalent, the efficacy of the dormant treatment can be improved by pruning out and destroying infected wood.",
                  "${widget.disease.suggestedTreatment.treatment}",
                  style: bodyTextStyle,
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class SpeakDialog extends StatefulWidget {
  @override
  _SpeakDialogState createState() => _SpeakDialogState();
}

typedef OnError = void Function(Exception exception);

const kUrl1 = 'https://luan.xyz/files/audio/ambient_c_motion.mp3';

class _SpeakDialogState extends State<SpeakDialog> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
        backgroundColor: Colors.transparent,
        insetPadding: EdgeInsets.zero,
        child: Container(
          color: Colors.black12, //black26.withOpacity(0.2),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            children: [
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  closeButton(),
                ],
              ),
              SizedBox(height: 120.h),
              ImageContainer(
                assetImage: "$assets/speak.png",
                height: MediaQuery.of(context).size.height / 1.8,
                width: MediaQuery.of(context).size.width,
                // fit: BoxFit.contain,
              ),
              Text("")
            ],
          ),
        ));
  }

  closeButton() {
    return InkWell(
      onTap: () {
        Get.back();
      },
      child: Padding(
        padding: const EdgeInsets.only(top: 0, left: 24.0),
        child: Container(
          height: 36.h,
          width: 36.w,
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
}
