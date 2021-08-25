import 'package:farmer_assistant_app/core/view_models/base_view_model.dart';

class CommonDiseaseViewModel extends BaseViewModel {
  CommonDiseaseViewModel() {
    getAllCommonPests();
  }

  List<CommonPest> commonPests = [];

  getAllCommonPests() {
    commonPests.add(CommonPest(
        id: '1',
        title: 'Virus',
        imgUrl: 'a_v1.png',
        subTitle: 'Apple Mosaic Virus',
        description:
            'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the'));
    commonPests.add(CommonPest(
        id: '2',
        imgUrl: 'bacteria_a1.png',
        title: 'Bacteria',
        subTitle: 'Bacterial Canker',
        description:
            'is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the'));
  }
}

class CommonPest {
  String id;
  String title;
  String imgUrl;
  String subTitle;
  String description;

  CommonPest(
      {this.id, this.title, this.imgUrl, this.subTitle, this.description});
}
