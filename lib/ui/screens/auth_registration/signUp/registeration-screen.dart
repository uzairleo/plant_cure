// import 'package:ebuddy_networking_app/core/constants/colors.dart';
// import 'package:ebuddy_networking_app/core/constants/strings.dart';
// import 'package:ebuddy_networking_app/core/constants/textstyle.dart';
// import 'package:ebuddy_networking_app/core/enums/view-state.dart';
// import 'package:ebuddy_networking_app/ui/custom_widgets/image-container.dart';
// import 'package:ebuddy_networking_app/ui/custom_widgets/rounded-gradient-button.dart';
// import 'package:ebuddy_networking_app/ui/custom_widgets/rounded-raised-button.dart';
// import 'package:ebuddy_networking_app/ui/custom_widgets/rounded_button.dart';
// import 'package:ebuddy_networking_app/ui/custom_widgets/text_fields/custom_textfield.dart';
// import 'package:ebuddy_networking_app/ui/screens/auth_registration/signUp/registration-view-modal.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';
// import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
// import '../../../../core/extension/email-validator.dart';

// ///
// ///Registration screen for [SignUp] purpose
// ///

// class RegistrationScreen extends StatefulWidget {
//   @override
//   _RegistrationScreenState createState() => _RegistrationScreenState();
// }

// class _RegistrationScreenState extends State<RegistrationScreen> {
//   final _formKey = GlobalKey<FormState>();
//   // final _authDataService = locator<AuthDataService>();

//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (context) => RegistrationViewModel(),
//       child: Consumer<RegistrationViewModel>(
//           builder: (context, model, child) => ModalProgressHUD(
//                 inAsyncCall: model.state == ViewState.loading,
//                 child: SafeArea(
//                   child: Scaffold(
//                     backgroundColor: backgroundColor,

//                     ///
//                     ///[body] starts from here
//                     ///
//                     body: SingleChildScrollView(
//                       physics: BouncingScrollPhysics(),
//                       child: Padding(
//                         padding: const EdgeInsets.only(
//                             left: 24.0, right: 24, bottom: 60),
//                         child: Form(
//                           key: _formKey,
//                           child: Column(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             // crossAxisAlignment: CrossAxisAlignment.center,
//                             children: [
//                               ///
//                               ///back button for popping
//                               ///
//                               backButton(),

//                               ///
//                               ///signUpLogo illustration
//                               ///
//                               signUpIllustration(),

//                               ///
//                               ///create account heading and subtitle
//                               ///
//                               heading(),

//                               ///
//                               ///Registration/sign up form
//                               ///
//                               registrationForm(model),

//                               ///
//                               ///agreement checkbox for privacy and policy
//                               ///
//                               agreementCheckBox(model),

//                               ///
//                               ///creat new account button for registration purpose
//                               ///
//                               createNewAccountButton(ontap: () {
//                                 print("Create New Account Button Pressed");
//                               })
//                             ],
//                           ),
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               )),
//     );
//   }

//   ///
//   ///back button for popping
//   ///
//   backButton() {
//     return Padding(
//       padding: const EdgeInsets.only(top: 21.0),
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.start,
//         children: [
//           GestureDetector(
//             onTap: () {
//               print("BackButtonPressed");
//             },
//             child: ImageContainer(
//               assetImage: "assets/static_assets/back_button.png",
//               height: 20,
//               width: 10,
//             ),
//           )
//         ],
//       ),
//     );
//   }

//   ///
//   ///signUpLogo illustration
//   ///
//   signUpIllustration() {
//     return Padding(
//       padding: const EdgeInsets.only(top: 36, bottom: 45),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           ImageContainer(
//             assetImage: "assets/static_assets/signup_logo.png",
//             height: 190.02,
//             width: 264.94,
//           )
//         ],
//       ),
//     );
//   }

//   ///
//   ///create account heading and subtitle
//   ///
//   heading() {
//     return Row(
//       children: [
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Text("Hello!",
//                 style: GoogleFonts.quicksand()
//                     .copyWith(fontSize: 36, fontWeight: FontWeight.bold)),
//             Text(
//               "Create account to continue",
//               style: GoogleFonts.quicksand().copyWith(
//                   fontSize: 18, fontWeight: FontWeight.w600, color: greyColor),
//             ),
//           ],
//         ),
//       ],
//     );
//   }

//   agreementCheckBox(RegistrationViewModel modal) {
//     return Padding(
//       padding: const EdgeInsets.only(top: 21, bottom: 36),
//       child: Row(
//         children: [
//           Transform.scale(
//             scale: 0.7,
//             child: Checkbox(
//                 activeColor: mainThemeColor,
//                 value: modal.isAgreementSelected,
//                 onChanged: (value) {
//                   modal.setAgreementCheckBox(value);
//                 }),
//           ),
//           Expanded(
//             child: RichText(
//               text: TextSpan(children: [
//                 TextSpan(
//                     text: "I agree the ",
//                     style: subBodyTextStyle.copyWith(
//                         fontSize: 13, color: Colors.black)),
//                 TextSpan(
//                     text: "Terms and conditions ",
//                     style: subBodyTextStyle.copyWith(
//                         color: mainThemeColor,
//                         fontSize: 13,
//                         fontWeight: FontWeight.w600)),
//                 TextSpan(
//                     text: "and ",
//                     style: subBodyTextStyle.copyWith(
//                         fontSize: 13, color: Colors.black)),
//                 TextSpan(
//                     text: "Privacy Policy",
//                     style: subBodyTextStyle.copyWith(
//                         color: mainThemeColor,
//                         fontSize: 13,
//                         fontWeight: FontWeight.w600)),
//               ]),
//             ),
//           )
//         ],
//       ),
//     );
//   }

//   ///
//   ///RegistrationForm
//   ///
//   registrationForm(RegistrationViewModel model) {
//     return Padding(
//       padding: EdgeInsets.only(top: 28),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           //name textfield
//           CustomTextField(
//             label: "FULL NAME",
//             errorText: "Please fill the name",
//             prefixIcon: ImageContainer(
//               assetImage: "$assets/full_name.png",
//               height: 14.8,
//               width: 18.5,
//             ),
//             controller: model.fullNameCtlr,
//             onSaved: (value) {},
//           ),
//           SizedBox(
//             height: 19,
//           ),
//           //email text field
//           CustomTextField(
//             label: "EMAIL ADDRESS",
//             errorText: "Please enter your email",
//             validator: (input) => input.isValidEmail() ? null : "Invalid Email",
//             prefixIcon: ImageContainer(
//               assetImage: "$assets/email.png",
//               height: 14.8,
//               width: 18.5,
//             ),
//             controller: model.emailCntrlr,
//             onSaved: (value) {},
//           ),
//           SizedBox(
//             height: 19,
//           ),

//           //password text field
//           CustomTextField(
//             label: "PASSWORD",
//             obscure: !model.passwordVisible,
//             // errorText: "Invalid Password",
//             validator: (value) {},
//             suffixIcon: Padding(
//               padding: const EdgeInsets.only(bottom: 8.0),
//               child: IconButton(
//                 icon: Icon(
//                   // Based on passwordVisible state choose the icon
//                   model.passwordVisible
//                       ? Icons.visibility
//                       : Icons.visibility_off,
//                   color: greyColor,
//                 ),
//                 onPressed: () {
//                   // Update the state i.e. toogle the state of passwordVisible variable
//                   setState(() {
//                     model.passwordVisible = !model.passwordVisible;
//                   });
//                 },
//               ),
//             ),
//             prefixIcon: ImageContainer(
//               assetImage: "$assets/password.png",
//               height: 14.8,
//               width: 18.5,
//             ),
//             // suffixIcon: ,
//             controller: model.passwordCtrl,
//             onSaved: (value) {},
//           ),
//           SizedBox(
//             height: 19,
//           ),

//           //confirm password textfield
//           CustomTextField(
//             label: "CONFIRM PASSWORD",
//             obscure: !model.confirmPasswordVisible,
//             // errorText: "Please enter your emai",
//             validator: (value) {},
//             suffixIcon: Padding(
//               padding: const EdgeInsets.only(bottom: 8.0),
//               child: IconButton(
//                 icon: Icon(
//                   // Based on passwordVisible state choose the icon
//                   model.confirmPasswordVisible
//                       ? Icons.visibility
//                       : Icons.visibility_off,
//                   color: greyColor,
//                 ),
//                 onPressed: () {
//                   // Update the state i.e. toogle the state of passwordVisible variable
//                   setState(() {
//                     model.confirmPasswordVisible =
//                         !model.confirmPasswordVisible;
//                   });
//                 },
//               ),
//             ),
//             prefixIcon: ImageContainer(
//               assetImage: "$assets/password.png",
//               height: 14.8,
//               width: 18.5,
//             ),
//             controller: model.confirmPasswrdControler,
//             onSaved: (value) {},
//           ),
//         ],
//       ),
//     );
//   }

//   ///
//   ///createNewAccountButton
//   ///
//   createNewAccountButton({ontap}) {
//     return Padding(
//       padding: const EdgeInsets.only(),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           RoundedRaisedButton(
//             buttonText: "Create new account",
//             onPressed: ontap,
//             color: mainThemeColor,
//           ),
//         ],
//       ),
//     );
//   }
// }
