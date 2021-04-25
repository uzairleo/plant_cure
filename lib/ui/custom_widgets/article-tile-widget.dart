// import 'package:flutter/material.dart';
// import 'package:ponansasa_patient_app/core/constants/colors.dart';
// import 'package:ponansasa_patient_app/core/constants/textstyle.dart';
// import 'package:ponansasa_patient_app/core/models/article.dart';
// import 'package:ponansasa_patient_app/ui/screens/article/article-screen.dart';

// ///
// ///THis is a custom widget which is used for Article item in HomeDashboard screen
// ///

// class ArticleTileWidget extends StatelessWidget {
//   //passing Article object
//   final Article article;
//   ArticleTileWidget({this.article});
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.only(bottom: 8.0),
//       child: Card(
//         elevation: 0.0,
//         child: InkWell(
//           onTap: () {
//             Navigator.push(context,
//                 MaterialPageRoute(builder: (_) => ArticleScreen(article)));
//           },
//           child: Container(
//             height: 80,
//             child: Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: <Widget>[
//                 //image from article
//                 // ImageContainer(
//                 //   assetImage: 'assets/static_assets/covid19.png',//article.featureImage,
//                 //   height: 70,
//                 //   width: 70,
//                 // ),
//                 Container(
//                     height: 70,
//                     width: 70,
//                     child: FadeInImage.assetNetwork(
//                         fit: BoxFit.fill,
//                         placeholder: "assets/static_assets/placeholder.png",
//                         image: article.featureImage ??
//                             "https://w7.pngwing.com/pngs/962/112/png-transparent-question-mark-computer-icons-avatar-miscellaneous-heroes-text.png")),
//                 Container(),
//                 SizedBox(width: 15),
//                 //title and description
//                 Expanded(
//                     child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   mainAxisAlignment: MainAxisAlignment.spaceAround,
//                   children: <Widget>[
//                     Text(
//                       article.title,
//                       style: buttonTextStyle2.copyWith(fontSize: 12),
//                     ),
//                     RichText(
//                         maxLines: 2,
//                         overflow: TextOverflow.ellipsis,
//                         text: TextSpan(
//                             text: article.content,
//                             style: categoryTextStyle,
//                             children: <TextSpan>[])),

//                     (article.content.length > 50)
//                         ? RichText(
//                             text: TextSpan(children: [
//                               TextSpan(
//                                 text: ".. ",
//                                 style: categoryTextStyle,
//                               ),
//                               TextSpan(
//                                   text: " Read More",
//                                   style: categoryTextStyle.copyWith(
//                                       fontWeight: FontWeight.w600,
//                                       color: blueThemeColor))
//                             ]),
//                           )
//                         : Text(""),
//                     // RichText(
//                     //     text: TextSpan(children: [
//                     //   //description
//                     //   TextSpan(
//                     //     text:article.content,
//                     //     // "New research finds that the virus that"
//                     //     //     "coronavirus disease 2019 (COVID-19) is"
//                     //     //     "stable..",
//                     //     style: categoryTextStyle,
//                     //   ),
//                     //   TextSpan(
//                     //     text: " . . .",
//                     //     style: categoryTextStyle,
//                     //   ),
//                     //   TextSpan(
//                     //       text: " Read more",
//                     //       style: categoryTextStyle.copyWith(
//                     //           fontWeight: FontWeight.w600,
//                     //           color: blueThemeColor))
//                     // ])),
//                   ],
//                 ))
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
