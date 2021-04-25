// import 'package:ebuddy_networking_app/core/constants/colors.dart';
// import 'package:ebuddy_networking_app/core/constants/strings.dart';
// import 'package:ebuddy_networking_app/core/constants/textstyle.dart';
// import 'package:ebuddy_networking_app/core/enums/view-state.dart';
// import 'package:ebuddy_networking_app/ui/custom_widgets/image-container.dart';
// import 'package:ebuddy_networking_app/ui/custom_widgets/rounded-raised-button.dart';
// import 'package:ebuddy_networking_app/ui/custom_widgets/text_fields/custom_textfield.dart';
// import 'package:ebuddy_networking_app/ui/screens/auth_registration/login/login-view-modal.dart';
// import 'package:ebuddy_networking_app/ui/screens/auth_registration/signUp/registration-view-modal.dart';
// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:provider/provider.dart';
// import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

// ///
// ///LoginScreen screen for [SignUp] purpose
// ///

// class LoginScreen extends StatefulWidget {
//   @override
//   _LoginScreenState createState() => _LoginScreenState();
// }

// class _LoginScreenState extends State<LoginScreen> {
//   final _formKey = GlobalKey<FormState>();
//   // final _authDataService = locator<AuthDataService>();

//   @override
//   void initState() {
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return ChangeNotifierProvider(
//       create: (context) => LoginViewModal(),
//       child: Consumer<LoginViewModal>(
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
//                               ///login illustration
//                               ///
//                               loginIllustration(),

//                               ///
//                               ///create account heading and subtitle
//                               ///
//                               heading(),

//                               ///
//                               ///Registration/sign up form
//                               ///
//                               registrationForm(model),

//                               Padding(
//                                 padding: const EdgeInsets.only(bottom: 10.0),
//                                 child: Row(
//                                   mainAxisAlignment: MainAxisAlignment.end,
//                                   children: [
//                                     TextButton(
//                                         onPressed: () {},
//                                         child: Text(
//                                           "Forget Password?",
//                                           style: GoogleFonts.quicksand()
//                                               .copyWith(
//                                                   fontSize: 18,
//                                                   color: Colors.black
//                                                       .withOpacity(0.5),
//                                                   fontWeight: FontWeight.w600),
//                                         ))
//                                   ],
//                                 ),
//                               ),

//                               ///
//                               ///creat new account button for registration purpose
//                               ///
//                               loginButton(ontap: () {
//                                 print(
//                                   "LoginButton Button Pressed",
//                                 );
//                               }),

//                               //or dont have account tag

//                               Padding(
//                                 padding: const EdgeInsets.only(top: 30.0),
//                                 child: Row(
//                                   mainAxisAlignment: MainAxisAlignment.center,
//                                   children: [
//                                     Text(
//                                       "Don't have an account?",
//                                       style: GoogleFonts.quicksand().copyWith(
//                                           fontSize: 18,
//                                           color: Colors.black,
//                                           fontWeight: FontWeight.w600),
//                                     ),
//                                     GestureDetector(
//                                       onTap: () {
//                                         print("SignUp pressed");
//                                       },
//                                       child: Text(
//                                         " Sign up",
//                                         style: GoogleFonts.quicksand().copyWith(
//                                             fontSize: 18,
//                                             color: mainThemeColor,
//                                             fontWeight: FontWeight.w600),
//                                       ),
//                                     )
//                                   ],
//                                 ),
//                               )
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
//   loginIllustration() {
//     return Padding(
//       padding: const EdgeInsets.only(top: 36, bottom: 45),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.center,
//         children: [
//           ImageContainer(
//             assetImage: "assets/static_assets/login_logo.png",
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
//             Text("Welcome Back!",
//                 style: GoogleFonts.quicksand()
//                     .copyWith(fontSize: 36, fontWeight: FontWeight.bold)),
//             Text(
//               "Login to your account",
//               style: GoogleFonts.quicksand().copyWith(
//                   fontSize: 18, fontWeight: FontWeight.w600, color: greyColor),
//             ),
//           ],
//         ),
//       ],
//     );
//   }

//   ///
//   ///RegistrationForm
//   ///
//   registrationForm(LoginViewModal model) {
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
//             height: 20,
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
//             buttonText: "LOGIN",
//             onPressed: ontap,
//             color: mainThemeColor,
//           ),
//         ],
//       ),
//     );
//   }
// }
