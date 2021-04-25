// import 'package:flutter/material.dart';
// import 'package:flutter_countdown_timer/index.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:get/get.dart';
// import 'package:ponansasa_patient_app/core/constants/colors.dart';
// import 'package:ponansasa_patient_app/core/constants/textstyle.dart';
// import 'package:ponansasa_patient_app/core/enums/call-status.dart';
// import 'package:ponansasa_patient_app/core/enums/call-type.dart';
// import 'package:ponansasa_patient_app/core/enums/consultation-status.dart';
// import 'package:ponansasa_patient_app/core/enums/message_type.dart';
// import 'package:ponansasa_patient_app/core/models/consultation/conversation.dart';
// import 'package:ponansasa_patient_app/core/services/auth_data_service.dart';
// import 'package:ponansasa_patient_app/core/services/database_service.dart';
// import 'package:ponansasa_patient_app/ui/custom_widgets/alert_dailogs/call-review-dialog.dart';
// import 'package:ponansasa_patient_app/ui/custom_widgets/alert_dailogs/cancel-consultation-dialog.dart';
// import 'package:ponansasa_patient_app/ui/custom_widgets/alert_dailogs/send_file_confirm_dialog.dart';
// import 'package:ponansasa_patient_app/ui/custom_widgets/bottom_sheets/file_message_botton_sheet.dart';
// import 'package:ponansasa_patient_app/ui/custom_widgets/messenger-text-widget.dart';
// import 'package:ponansasa_patient_app/ui/screens/talk-with-doctor/consultation_time_view_model.dart';
// import 'package:provider/provider.dart';
// import '../../../locator.dart';
// import '../../screens/root-screen.dart';
// import '../../screens/consultation/conversations/chat_page/chat_model.dart';

// ///
// ///This is a draggable chat page /or scrollable chat page showing when some one tap on chat button in audio/video call screen
// ///
// class ChatBottomSheet extends StatefulWidget {
//   final Conversation conversation;
//   ChatBottomSheet({this.conversation});

//   @override
//   _ChatBottomSheetState createState() => _ChatBottomSheetState();
// }

// class _ChatBottomSheetState extends State<ChatBottomSheet> {
//   @override
//   Widget build(BuildContext context) {
// //    Provider.of<ConsultationTimeModel>(context).context = context;
//     print(widget.conversation.toJson());
//     return ChangeNotifierProvider(
//         create: (context) => ChatModel(widget.conversation),
//         child: Consumer<ChatModel>(
//           builder: (context, chatmodel, child) => Container(
//             height: 500,
//             color: Color(0xFF757575),
//             child: Container(
//               decoration: BoxDecoration(
//                 borderRadius: BorderRadius.only(
//                   topLeft: Radius.circular(20.0),
//                   topRight: Radius.circular(20.0),
//                 ),
//                 color: Colors.white,
//               ),
//               child: Stack(
//                 children: [
//                   /// Chat Screen dody
//                   _body(chatmodel, context),

//                   ///
//                   /// Remaining consultation time widget
//                   ///
//                   Align(
//                     alignment: Alignment.topCenter,
//                     child: Consumer<ConsultationTimeModel>(
//                       builder: (context, model, child) => CountdownTimer(
//                         controller: model.controller,
//                         widgetBuilder: (context, time) {
//                           if (time != null) {
//                             return Chip(
//                               label: Text(
//                                   '${time.hours ?? '00'}:${time.min ?? '00'}:${time.sec ?? '00'}'),
//                             );
//                           } else {
//                             ///updating call status
//                             chatmodel
//                                 .updateAudioCallStatus(AudioCallStatus.ended);
//                             chatmodel
//                                 .updateVideoCallStatus(VideoCallStatus.ended);
//                             chatmodel.updateConsultationStatus(
//                                 ConsultationStatus.closed);

//                             Future.delayed(Duration.zero, () {
//                               //then show dialog
//                               showDialog(
//                                 barrierDismissible: false,
//                                 context: context,
//                                 child: AlertDialog(
//                                   title: Text('Time Out'),
//                                   content: Text('Your consultation is over'),
//                                   actions: [
//                                     RaisedButton(
//                                         child: Text('OK'),
//                                         onPressed: () {
//                                           Get.offAll(RootScreen());
//                                           Future.delayed(Duration.zero, () {
//                                             Get.dialog(
//                                                 CallReviewDialog(
//                                                   onSavePressed: (value) {},
//                                                   onSubmitPressed: () {
//                                                     print(
//                                                         "Submit button pressed");
//                                                     chatmodel.consultationReview
//                                                             .consultationId =
//                                                         widget.conversation
//                                                             .consultationId;
//                                                     chatmodel
//                                                         .addConsultationReview();
//                                                     Get.offAll(RootScreen());
//                                                   },
//                                                   onRatingUpdate: (rating) {
//                                                     print(
//                                                         "Doctor Rating updated");
//                                                     chatmodel.consultationReview
//                                                             .patientRating =
//                                                         rating.toInt();
//                                                   },
//                                                 ),
//                                                 barrierDismissible: false);
//                                           });
//                                         }),
//                                   ],
//                                 ),
//                               );
//                             });
//                             return Container(width: 0, height: 0);
//                           }
//                         },
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ));
//   }

//   _body(ChatModel model, context) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 18.0),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: <Widget>[
//           ///
//           /// Top bar
//           ///
//           // _topAppBar(context, model),

//           ///
//           /// Chat Messages
//           ///
//           Expanded(
//             child: ListView.builder(
//               padding: EdgeInsets.only(top: 24),
//               physics: BouncingScrollPhysics(),
//               reverse: true,
//               itemCount: model.reversedMessagesList.length,
//               shrinkWrap: true,
//               itemBuilder: (context, index) {
//                 //Todo: Change docId to real Firebase Id
//                 bool isMe = model.reversedMessagesList[index].senderId ==
//                     locator<AuthDataService>().firebaseUser.uid;

//                 print('isMe: $isMe');
//                 if (model.reversedMessagesList[index].type ==
//                     MessageType.file) {
//                   return isMe
//                       ? FileMessageRight(model.reversedMessagesList[index])
//                       : FileMessageLeft(model.reversedMessagesList[index]);
//                 } else if (model.reversedMessagesList[index].type ==
//                     MessageType.image) {
//                   return isMe
//                       ? ImageMessageRight(model.reversedMessagesList[index])
//                       : ImageMessageLeft(model.reversedMessagesList[index]);
//                 } else {
//                   return isMe
//                       ? MessengerTextRight(
//                           message: model.reversedMessagesList[index])
//                       : MessengerTextLeft(
//                           message: model.reversedMessagesList[index]);
//                 }
//               },
//             ),
//           ),

//           ///
//           /// Send Message Text Field plus buttons
//           ///
//           Container(
//             width: MediaQuery.of(context).size.width,
//             color: Colors.white,
//             child: Padding(
//               padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 20),
//               child: Row(
//                 children: <Widget>[
//                   ///
//                   /// Add files button
//                   ///
//                   GestureDetector(
//                     child: Image.asset(
//                       'assets/static_assets/icon_add.png',
//                       width: 30,
//                       height: 40,
//                     ),
//                     onTap: () {
//                       _showModalBottomSheet(context, model);
//                     },
//                   ),
//                   SizedBox(width: 20),

//                   ///
//                   /// Message TextField
//                   ///
//                   Flexible(
//                     child: TextField(
//                       textCapitalization: TextCapitalization.sentences,
//                       controller: model.controller,
//                       onChanged: (val) {
//                         model.msgToBeSent.message = val;
//                       },
//                       autofocus: false,
//                       decoration: InputDecoration(
//                         hintText: 'Type your message',
//                         border: InputBorder.none,
//                       ),
//                     ),
//                   ),

//                   ///
//                   /// Send Message Button
//                   ///
// //                GestureDetector(
// //                  child: Image.asset(
// //                    'assets/static_assets/icon_send.png',
// //                    width: 30,
// //                    height: 40,
// //                  ),
// //                  onTap: () {
// //                    if (model.msgToBeSent.message.trim().length > 0) {
// //                      model.sendMessage();
// //                    }
// //                  },
// //                ),
//                   GestureDetector(
//                     onTap: () {
//                       if (model.msgToBeSent.message.trim().length > 0) {
//                         model.sendMessage();
//                       }
//                     },
//                     child: Image(
//                       image: AssetImage(
//                           'assets/static_assets/ic_send_message.png'),
//                       width: 41,
//                       height: 41,
//                     ),
//                   )
//                 ],
//               ),
//             ),
//           ),
//         ],
//       ),
//     );
//   }

//   _topAppBar(context, ChatModel model) {
//     return Container(
//       width: MediaQuery.of(context).size.width,
//       height: 83,
//       color: Colors.white,
//       padding: EdgeInsets.fromLTRB(0, 0, 20, 0),
//       child: Row(
//         children: <Widget>[
//           IconButton(
//             padding: EdgeInsets.all(0),
//             icon: Icon(
//               Icons.arrow_back_ios,
// //                color: mainThemeColor,
//             ),
//             onPressed: () {
//               onBackPressed(model);
//             },
//           ),
//           SizedBox(width: 25),
//           ClipRRect(
//             child: FadeInImage(
//               image: NetworkImage(
//                   widget.conversation?.patientProfile?.imgUrl ?? ''),
//               placeholder: AssetImage('assets/static_assets/Image 1.png'),
//               width: 41,
//               height: 41,
//               fit: BoxFit.cover,
//             ),
//             borderRadius: BorderRadius.circular(30),
//           ),
//           SizedBox(width: 10),
//           Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               Text(
//                 widget.conversation.patientProfile?.name ?? '',
//                 style: subtitleTextFont.copyWith(fontWeight: FontWeight.w500),
//               ),
//               Text(
//                 'Online',
//                 style: subtitleTextFont.copyWith(color: accentColor3),
//               ),
//             ],
//           ),
//           Spacer(),
//           InkWell(
//             child: SvgPicture.asset('assets/img/ic_video_call.svg'),
//             onTap: () {
//               ///
//               ///[video-call]  listerner
//               ///
//               model.callType = CallType.video;
//               locator<DatabaseService>().sendNotification(
//                 callType: model.callType.toString(),
//                 fCMtoken: widget.conversation.fcmToken,
//                 userName: locator<AuthDataService>().patientProfile.userName,
//                 patientId: widget.conversation.patientId,
//               );

//               //on video cal join
//               model.onJoin();
//             },
//           ),
//           SizedBox(width: 20),
//           InkWell(
//             child: SvgPicture.asset('assets/img/ic_call.svg'),
//             onTap: () {
//               ///
//               ///[video-call]  listerner
//               ///
//               model.callType = CallType.audio;
//               locator<DatabaseService>().sendNotification(
//                 callType: model.callType.toString(),
//                 fCMtoken: widget.conversation.fcmToken,
//                 userName: locator<AuthDataService>().patientProfile.userName,
//                 patientId: widget.conversation.patientId,
//               );
//               model.onJoin();
//             },
//           )
//         ],
//       ),
//     );
//   }

//   _showModalBottomSheet(context, ChatModel model) {
//     showModalBottomSheet(
//         context: context,
//         builder: (context) => FileMessageBottomSheet(
//               onPickFile: () async {
//                 await model.pickFile();
//                 Navigator.pop(context);
//               },
//               onPickImage: () async {
//                 await model.pickImage();
//                 Navigator.pop(context);
//               },
//             )).then((val) {
//       _modalBottomSheetClosed(context, model);
//     });
//   }

//   _modalBottomSheetClosed(context, ChatModel model) {
//     print('Bottom Sheet closed');
//     if (model.selectedFile != null) {
//       final extension = model.selectedFile.path.split('.').last;
//       if (extension == 'pdf' || extension == 'doc') {
//         model.msgToBeSent.type = MessageType.file;
//       } else {
//         model.msgToBeSent.type = MessageType.image;
//       }
//       print('Extension: $extension');
//       showDialog(
//           context: context,
//           child: SendFileConfirmDialog(
//             isFile: extension == 'pdf' || extension == 'doc',
//             file: model.selectedFile,
//             onSendPressed: () {
//               print('Send pressed');
//               Navigator.pop(context);
//               model.sendMessage();
//             },
//           ));
//     } else
//       print('File is null');
//   }

//   Future<bool> onBackPressed(ChatModel chatModel) {
//     return showDialog(
//           context: context,
//           child: CancelConsultationDialog(
//             onOkPressed: () {
//               chatModel.updateConsultationStatus(ConsultationStatus.closed);
//             },
//           ),
//         ) ??
//         false;
//   }
// }
