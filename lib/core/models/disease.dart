class Disease {
  String label;
  String symptoms;
  String disease;
  String aboutdisease;
  SuggestedTreatment suggestedTreatment;

  Disease(
      {this.label, this.aboutdisease, this.symptoms, this.suggestedTreatment});

  Disease.fromJson(json) {
    label = json['label'];
    disease = json['disease'];
    symptoms = json['symptoms'];
    aboutdisease = json['about_disease'];
    suggestedTreatment = json['suggested_treatment'] != null
        ? new SuggestedTreatment.fromJson(json['suggested_treatment'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['label'] = this.label;
    data['symptoms'] = this.symptoms;
    data['disease'] = this.disease;
    data['about_disease'] = this.aboutdisease;
    if (this.suggestedTreatment != null) {
      data['suggested_treatment'] = this.suggestedTreatment.toJson();
    }
    return data;
  }
}

class SuggestedTreatment {
  String treatment;
  String videoLink;
  String title;

  SuggestedTreatment({this.treatment, this.videoLink, this.title});

  SuggestedTreatment.fromJson(Map<String, dynamic> json) {
    treatment = json['treatment'];
    videoLink = json['video_link'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['treatment'] = this.treatment;
    data['video_link'] = this.videoLink;
    return data;
  }
}
