import 'package:farmer_assistant_app/core/constants/colors.dart';
import 'package:farmer_assistant_app/core/constants/screen-util.dart';
import 'package:farmer_assistant_app/core/constants/strings.dart';
import 'package:farmer_assistant_app/core/constants/textstyle.dart';
import 'package:farmer_assistant_app/core/enums/view-state.dart';
import 'package:farmer_assistant_app/ui/custom_widgets/image-container.dart';
import 'package:farmer_assistant_app/ui/custom_widgets/rounded-raised-button.dart';
import 'package:farmer_assistant_app/ui/custom_widgets/text_fields/custom_textfield.dart';
import 'package:farmer_assistant_app/ui/screens/localization/select-locale-screen.dart';
import 'package:farmer_assistant_app/ui/screens/registration/registration-view-modal.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';

///
///Registration screen for [SignUp] purpose
///

class RegistrationScreen extends StatefulWidget {
  @override
  _RegistrationScreenState createState() => _RegistrationScreenState();
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _formKey = GlobalKey<FormState>();
  // final _authDataService = locator<AuthDataService>();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => RegistrationViewModel(),
      child: Consumer<RegistrationViewModel>(
          builder: (context, model, child) => ModalProgressHUD(
                inAsyncCall: model.state == ViewState.loading,
                child: Scaffold(
                  backgroundColor: Colors.white,

                  ///
                  ///[body] starts from here
                  ///
                  body: SingleChildScrollView(
                    physics: BouncingScrollPhysics(),
                    child: Padding(
                      padding: const EdgeInsets.only(
                          left: 14.0, right: 14, bottom: 46),
                      child: Form(
                        key: _formKey,
                        child: Column(
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.only(left: 16, right: 16),
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                // crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  ///
                                  ///signUpLogo illustration
                                  ///
                                  signUpIllustration(),

                                  ///
                                  ///Registration/sign up form
                                  ///
                                  registrationForm(model),
                                ],
                              ),
                            ),
                            //stack element/widget
                            Align(
                              alignment: Alignment.bottomCenter,
                              child:

                                  ///
                                  ///skop and next button
                                  ///
                                  skipAndNextButton(onNextTap: () async {
                                print("Next pressed");
                                if (_formKey.currentState.validate()) {
                                  _formKey.currentState.save();
                                  await model.requestRegistration();
                                  Get.offAll(() => SelectLocaleScreen());
                                }
                              }, onSkipTap: () {
                                print("Skip pressed");
                                Get.to(() => SelectLocaleScreen());
                              }),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
              )),
    );
  }

  ///
  ///signUpLogo illustration
  ///
  signUpIllustration() {
    return Padding(
      padding: const EdgeInsets.only(top: 0, bottom: 45),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 60.0.h,
          ),
          ImageContainer(
            assetImage: "assets/static_assets/register_logo.png",
            width: 280.w,
            height: 165.h,
          )
        ],
      ),
    );
  }

  ///
  ///RegistrationForm
  ///
  registrationForm(RegistrationViewModel model) {
    return Padding(
      padding: EdgeInsets.only(top: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //name textfield
          CustomTextField(
            label: "FULL NAME",
            errorText: "Please fill the name",
            prefixIcon: ImageContainer(
              assetImage: "$assets/full_name.png",
              height: 14.8,
              width: 18.5,
            ),
            controller: model.fullNameCtlr,
            onSaved: (value) {
              model.registerBody.fullName = value.toString();
            },
          ),
          SizedBox(
            height: 35.h,
          ),
          //email text field
          CustomTextField(
            label: "EMAIL ADDRESS",
            errorText: "Please enter your email",
            validator: (input) => input.isValidEmail() ? null : "Invalid Email",
            prefixIcon: ImageContainer(
              assetImage: "$assets/email.png",
              height: 14.8,
              width: 18.5,
            ),
            controller: model.emailCntrlr,
            inputType: TextInputType.emailAddress,
            onSaved: (value) {
              model.registerBody.email = value.toString();
            },
          ),
          SizedBox(
            height: 35.h,
          ),

          //email text field
          CustomTextField(
            label: "PHONE NUMBER",
            inputType: TextInputType.phone,
            errorText: "Please enter your Phone Number",

            // validator: (input) => input.isValidEmail() ? null : "Invalid Email",
            prefixIcon: ImageContainer(
              assetImage: "$assets/email.png",
              height: 14.8,
              width: 18.5,
            ),
            // controller: model.emailCntrlr,
            onSaved: (value) {
              model.registerBody.phoneNo = value.toString();
            },
          ),
          SizedBox(
            height: 185.h,
          ),

          // Row(
          //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //   children: [
          //     //email text field
          //     Expanded(
          //       child: CustomTextField(
          //         label: "DOB",
          //         errorText: "Invalid DOB",
          //         // validator: (input) => input.isValidEmail() ? null : "Invalid Email",
          //         prefixIcon: ImageContainer(
          //           assetImage: "$assets/email.png",
          //           height: 14.8,
          //           width: 18.5,
          //         ),
          //         // controller: model.emailCntrlr,
          //         onSaved: (value) {
          //           model.registerBody.dob = value.toString();
          //         },
          //       ),
          //     ),
          //     SizedBox(
          //       width: 20,
          //     ),
          //     //email text field
          //     Expanded(
          //       child: CustomTextField(
          //         label: "WEIGHT",
          //         errorText: "Invalid Weight",
          //         // validator: (input) => input.isValidEmail() ? null : "Invalid Email",
          //         prefixIcon: ImageContainer(
          //           assetImage: "$assets/email.png",
          //           height: 14.8,
          //           width: 18.5,
          //         ),
          //         // controller: model.emailCntrlr,
          //         onSaved: (value) {
          //           model.registerBody.weight = value.toString();
          //         },
          //       ),
          //     ),
          //   ],
          // ),

          // SizedBox(
          //   height: 35.h,
          // ),
          // CustomTextField(
          //   label: "NUMBER OF FIELDS",
          //   errorText: "Please fill this field",
          //   // validator: (input) => input.isValidEmail() ? null : "Invalid Email",
          //   prefixIcon: ImageContainer(
          //     assetImage: "$assets/email.png",
          //     height: 14.8,
          //     width: 18.5,
          //   ),
          //   // controller: model.emailCntrlr,
          //   onSaved: (value) {
          //     model.registerBody.noOfFirelds = value.toString();
          //   },
          // ),

          //password text field
          // CustomTextField(
          //   label: "PASSWORD",
          //   obscure: !model.passwordVisible,
          //   // errorText: "Invalid Password",
          //   validator: (value) {},
          //   suffixIcon: Padding(
          //     padding: const EdgeInsets.only(bottom: 8.0),
          //     child: IconButton(
          //       icon: Icon(
          //         // Based on passwordVisible state choose the icon
          //         model.passwordVisible
          //             ? Icons.visibility
          //             : Icons.visibility_off,
          //         color: greyColor,
          //       ),
          //       onPressed: () {
          //         // Update the state i.e. toogle the state of passwordVisible variable
          //         setState(() {
          //           model.passwordVisible = !model.passwordVisible;
          //         });
          //       },
          //     ),
          //   ),
          //   prefixIcon: ImageContainer(
          //     assetImage: "$assets/password.png",
          //     height: 14.8,
          //     width: 18.5,
          //   ),
          //   // suffixIcon: ,
          //   controller: model.passwordCtrl,
          //   onSaved: (value) {},
          // ),
          // SizedBox(
          //   height: 19,
          // ),

          // //confirm password textfield
          // CustomTextField(
          //   label: "CONFIRM PASSWORD",
          //   obscure: !model.confirmPasswordVisible,
          //   // errorText: "Please enter your emai",
          //   validator: (value) {},
          //   suffixIcon: Padding(
          //     padding: const EdgeInsets.only(bottom: 8.0),
          //     child: IconButton(
          //       icon: Icon(
          //         // Based on passwordVisible state choose the icon
          //         model.confirmPasswordVisible
          //             ? Icons.visibility
          //             : Icons.visibility_off,
          //         color: greyColor,
          //       ),
          //       onPressed: () {
          //         // Update the state i.e. toogle the state of passwordVisible variable
          //         setState(() {
          //           model.confirmPasswordVisible =
          //               !model.confirmPasswordVisible;
          //         });
          //       },
          //     ),
          //   ),
          //   prefixIcon: ImageContainer(
          //     assetImage: "$assets/password.png",
          //     height: 14.8,
          //     width: 18.5,
          //   ),
          //   controller: model.confirmPasswrdControler,
          //   onSaved: (value) {},
          // ),
        ],
      ),
    );
  }

  skipAndNextButton({onSkipTap, onNextTap}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 41, right: 0, left: 0, top: 60),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          TextButton(
              onPressed: onSkipTap,
              child: Text(
                "Skip",
                style: buttonTextStyle.copyWith(color: mainThemeColor),
              )),
          Container(
            height: 39.h,
            child: RoundedRaisedButton(
              buttonText: "Reigster",
              onPressed: onNextTap,
              color: mainThemeColor,
            ),
          ),
        ],
      ),
    );
  }
}
