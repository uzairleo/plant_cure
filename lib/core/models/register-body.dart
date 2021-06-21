class RegisterBody {
  String fullName;
  String email;
  String dob;
  String noOfFirelds;
  String phoneNo;
  String weight;

  RegisterBody(
      {this.fullName,
      this.email,
      this.dob,
      this.noOfFirelds,
      this.phoneNo,
      this.weight});

  RegisterBody.fromJson(Map<String, dynamic> json) {
    fullName = json['full_name'];
    email = json['email'];
    dob = json['dob'];
    noOfFirelds = json['no_of_firelds'];
    phoneNo = json['phone_no'];
    weight = json['weight'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['full_name'] = this.fullName;
    data['email'] = this.email;
    data['dob'] = this.dob;
    data['no_of_firelds'] = this.noOfFirelds;
    data['phone_no'] = this.phoneNo;
    data['weight'] = this.weight;
    return data;
  }
}
