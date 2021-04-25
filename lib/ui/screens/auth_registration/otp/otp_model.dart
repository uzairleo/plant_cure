// import 'package:ponansasa_patient_app/core/enums/view-state.dart';
// import 'package:ponansasa_patient_app/core/models/confirm_otp_body.dart';
// import 'package:ponansasa_patient_app/core/models/otp_body.dart';
// import 'package:ponansasa_patient_app/core/models/response/otp_response.dart';
// import 'package:ponansasa_patient_app/core/services/database_service.dart';
// import 'package:ponansasa_patient_app/core/view_models/base_view_model.dart';
// import 'package:ponansasa_patient_app/locator.dart';

// class OtpModel extends BaseViewModel {
//   OtpBody otpBody;
//   OtpResponse response;
//   final _dbService = locator<DatabaseService>();

//   OtpModel(phoneNumber) {
//     otpBody = OtpBody(phoneNumber);
//   }

//   reqConfirmOtp(otpInput) async {
//     setState(ViewState.busy);
//     print('OTP Submitted: $otpInput');
//     final body = ConfirmOtpBody(otpBody.phone_number, otpInput);
//     response = await _dbService.reqConfirmOtp(body);
//     setState(ViewState.busy);
//   }

//   void reqNewOtp() {
//     _dbService.reqOtp(otpBody);
//   }
// }
