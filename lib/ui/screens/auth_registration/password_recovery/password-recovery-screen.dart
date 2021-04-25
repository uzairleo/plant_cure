// import 'package:ebuddy_networking_app/core/constants/colors.dart';
// import 'package:ebuddy_networking_app/core/constants/strings.dart';
// import 'package:ebuddy_networking_app/core/constants/textstyle.dart';
// import 'package:ebuddy_networking_app/core/enums/view-state.dart';
// import 'package:ebuddy_networking_app/ui/custom_widgets/image-container.dart';
// import 'package:ebuddy_networking_app/ui/custom_widgets/rounded-raised-button.dart';
// import 'package:ebuddy_networking_app/ui/custom_widgets/text_fields/custom_textfield.dart';
// import 'package:ebuddy_networking_app/ui/screens/auth_registration/login/login-view-modal.dart';
// import 'package:ebuddy_networking_app/ui/screens/auth_registration/password_recovery/password-recovery-view-model.dart';
// import 'package:ebuddy_networking_app/ui/screens/auth_registration/signUp/registration-view-modal.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';
// import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

// ///
// ///Password recovery  screen for recovering password purpose
// ///

// class PasswordRecoveryScreen extends StatefulWidget {
//   @override
//   _PasswordRecoveryScreenState createState() => _PasswordRecoveryScreenState();
// }

// class _PasswordRecoveryScreenState extends State<PasswordRecoveryScreen> {
//   final _formKey = GlobalKey<FormState>();
//   // final _authDataService = locator<AuthDataService>();

//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (context) => PasswordRecoveryViewModel(),
//       child: Consumer<PasswordRecoveryViewModel>(
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
//                               ///recovery illustration
//                               ///
//                               recoveryIllustration(),

//                               ///
//                               ///create account heading and subtitle
//                               ///
//                               heading(),

//                               ///
//                               ///Email form textfield
//                               ///
//                               emailTextfield(model),

//                               ///
//                               ///creat new account button for registration purpose
//                               ///
//                               loginButton(ontap: () {
//                                 print(
//                                   "LoginButton Button Pressed",
//                                 );
//                               }),
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
//   recoveryIllustration() {
//     return Padding(
//       padding: const EdgeInsets.only(top: 36, bottom: 45),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           ImageContainer(
//             assetImage: "assets/static_assets/pass_recover.png",
//             height: 260,
//             width: 271,
//           )
//         ],
//       ),
//     );
//   }

//   ///
//   ///create account heading and subtitle
//   ///
//   heading() {
//     return Column(
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: [
//         Text("Password Recovery",
//             style: GoogleFonts.quicksand()
//                 .copyWith(fontSize: 30, fontWeight: FontWeight.bold)),
//         Row(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Expanded(
//               child: Text(
//                 "Enter your email to recover your password",
//                 style: GoogleFonts.quicksand().copyWith(
//                     fontSize: 16,
//                     fontWeight: FontWeight.w600,
//                     color: greyColor),
//               ),
//             ),
//           ],
//         ),
//       ],
//     );
//   }

//   ///
//   ///RegistrationForm
//   ///
//   emailTextfield(PasswordRecoveryViewModel model) {
//     return Padding(
//       padding: EdgeInsets.only(top: 28),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
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
//             height: 28,
//           ),
//         ],
//       ),
//     );
//   }

//   ///
//   ///createNewAccountButton
//   ///
//   loginButton({ontap}) {
//     return Padding(
//       padding: const EdgeInsets.only(),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: [
//           RoundedRaisedButton(
//             buttonText: "Send Email",
//             onPressed: ontap,
//             color: mainThemeColor,
//           ),
//         ],
//       ),
//     );
//   }
// }
