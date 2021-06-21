class Disease {
  String label;
  String treatment;
  String symptoms;
  SuggestedTreatment suggestedTreatment;

  Disease({this.label, this.treatment, this.symptoms, this.suggestedTreatment});

  Disease.fromJson(json) {
    label = json['label'];
    treatment = json['treatment'];
    symptoms = json['symptoms'];
    suggestedTreatment = json['suggested_treatment'] != null
        ? new SuggestedTreatment.fromJson(json['suggested_treatment'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['label'] = this.label;
    data['treatment'] = this.treatment;
    data['symptoms'] = this.symptoms;
    if (this.suggestedTreatment != null) {
      data['suggested_treatment'] = this.suggestedTreatment.toJson();
    }
    return data;
  }
}

class SuggestedTreatment {
  String treatment;
  String videoLink;

  SuggestedTreatment({this.treatment, this.videoLink});

  SuggestedTreatment.fromJson(Map<String, dynamic> json) {
    treatment = json['treatment'];
    videoLink = json['video_link'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['treatment'] = this.treatment;
    data['video_link'] = this.videoLink;
    return data;
  }
}
