import 'package:farmer_assistant_app/core/constants/strings.dart';
import 'package:farmer_assistant_app/core/models/crop.dart';
import 'package:farmer_assistant_app/core/view_models/base_view_model.dart';
import 'package:flutter/material.dart';

class AddCropViewModel extends BaseViewModel {
  AddCropViewModel() {
    injectAvailableCrops();
  }

  List<Crop> availableCrops = [];
  List<Crop> addedCrops = [];

  addCrop(Crop crop) {
    if (!addedCrops.contains(crop)) {
      // addedCrops.add(crop);
      addedCrops.insert(0, crop);
    }
    notifyListeners();
  }

  removeFromAddedCrops(Crop crop) {
    addedCrops.remove(crop);
    notifyListeners();
  }

  clearSelectedCrop() {
    for (int i = 0; i < addedCrops.length; i++) {
      addedCrops[i].isSelected = false;
    }
  }

  injectAvailableCrops() {
    ////
    ///
    ///[APPRICOT] fruit data with diseases
    ///
    availableCrops.add(
      Crop(
          id: "1",
          imgUrl: "$assets/apricot.png",
          name: "Apricot",
          color: Color(0XFFFBCEB1),
          commonDiseases: [
            ///Disease no 1
            Disease(
                name: "Shot hole",
                treatments: """
i.	Apply Bordeaux mixture especially in winter season 
ii.	Apply winter sprays as preventive sprays / Copper based fungicides
iii.Apply curative sprays on the appearance of disease,
 •	Success (Chlorothalonil) @ 330g/200L of water 
            """,
                symptoms:
                    "Small red or brown spots, usually 0.25 inch in diameter and with purple edges, first appear on leaves, buds, and fruits. The infection causes holes in the leaves as a result of dried lesions dropping out, causing the leaf shape to be disrupted. The lesions have brown midpoint lumps that cause buds to turn brown/black. This shot hole also spreads to Shoot. Furthermore, the fruit infections start as purple-red spots and can cause the fruit to drop or defoliate if the infection is severe",
                favorableConditions:
                    " Thyrostroma Carpophilum, (formerly Wilsonomyces Carpophilus), is a type of fungus that infects usually apricot buds and twigs. The fungus is most common on apricot where the fungal spores spreads in rainy weather by spreading spores from infected tissue to leaves and fruit by splashed and wind-blown rain from spring to falls season. The spores usually require four hours of moisture to germinate and also, sometimes spread rapidly within a tree. Lesions develop very slowly in cold such as 7 °C or below and can grow fast in optimal temperatures such as 20 to 27 °C.  The disease can be controlled by using fungicides.",
                imgUrls: [
                  "$assets/bacteria_a1.png",
                ]),

            ///Disease no 2
            Disease(
                name: "Brown Rot: ",
                treatments: """
Apply curative spray on the appearance of disease.
•	Top guard @ 200ml/100L of water 
•	Nanok @ 100ml/ 200L 
            """,
                symptoms:
                    "Brown rot is a type of fungus that grows by digesting cellulose and leaving lignin behind, causing brown spots on apricots. The disease attacks blossoms and spreads to branches, killing the stems. During their development, the fruits became infected.",
                favorableConditions:
                    "Brown rot is a caused by a fungus called Monilinia fructicola, which usually spreads during rainy season via wind, rain and insects. It spreads in high humid environments with temperature below 20 oC. Pesticides can be used to keep the disease under control.",
                imgUrls: [
                  "$assets/bacteria_a1.png",
                ]),

            ///Disease no 3
            Disease(
                name: "Powdery Mildew",
                treatments: """
Apply curative spray on the appearance of disease.
•	Systhane @ 2ml /L of water 
            """,
                symptoms:
                    "Powdery Mildew is characterized by round, chalky white lesions in patches caused by fungus growth on various parts of the apricot tree, including the leaves and fruits. Powdery mildew can cause scabs and red or purple splotches on apricot trees. When the patches mature, they turn brown and spread across the entire fruit, cracking it and causing the leaves to curl upward and eventually drop.",
                favorableConditions:
                    "Apricot trees are frequently infected with powdery mildew (dry weather disease) caused by Sphaerotheca pannosa, which is one of two species of powdery mildew that infect apricot fruit and leaves in the spring. It grows at temperatures ranging from 18 to 27°C in high humidity, such as at night, to allow for spore germination. Winter cold, on the other hand, can kill them. Powdery mildew can be controlled with fungicides applied during bloom and fruit development. Fungicides used to treat Brown rot are also effective against powdery mildew.",
                imgUrls: [
                  "$assets/bacteria_a1.png",
                ]),

            ///Disease no 5
            Disease(
                name: "Gummosis",
                treatments: """
Apply curative spray on the appearance of disease,
•	Kocide @ 250g/100L of water OR
•	Cobox @ 250g/100L of water OR 
•	Champion 500-1000g/100L of water OR
•	Champion 300-350g/ 200L of water
            """,
                symptoms:
                    "Gummosis (Eutypa die back / Foot rot) is the formation of gummy patches on the surface of an apricot tree. It is distinguished by the gum or sap that oozes from a wound in the tree's bark. This happens when sap oozes from wounds or cankers in response to external stimuli such as bad weather, infections, insect problems, or mechanical damage. It causes entire branches to die with their leaves still attached in the late spring.",
                favorableConditions:
                    "Fungal gummosis usually happens due to Botryosphaeria dothidea, when the tree has a perennial or bacterial canker and zoospores splash onto a wound or bark crack around the trunk's base. Heavy and continuous rains are ideal for the growth of gummosis, especially during fruit growth and ripening. It can be avoided by painting all pruning wounds with an organic or chemical fungicide during hot and dry weather.",
                imgUrls: [
                  "$assets/bacteria_a1.png",
                ]),

            ///Disease no 6
            Disease(
                name: "Crown Gall",
                treatments: """
•	Dip roots stone fruit nursery plant in solution of “No gall” for at least 5 minutes prior to plantation. 
•	No chemical control is available. 
•	Plant only resistant varieties/ disease free plants 
           """,
                symptoms:
                    "It can become a host for any plant pathogen that causes tumors or galls. It appears in the early stages as tumor swellings that are spherical, white/flesh colored, rough, spongy, and wart-like. The disease causes galls on the roots, crowns, trunks, and canes, which usually interfere with water and nutrient flow in the plants, causing them to weaken, stun, and become unproductive.",
                favorableConditions:
                    "The bacterium Agrobacterium Tumefacines is usually responsible for the Crown Gall. The best time to visit is in the spring or early summer. If the disease is severe, the plant will suffer and produce dry, underdeveloped fruit.",
                imgUrls: [
                  "$assets/bacteria_a1.png",
                ]),

            ///Disease no 7
            Disease(name: "Water Stress", treatments: """
          •	Give water when needed
            """, symptoms: """
          no symptoms available
           """, favorableConditions: """
          no favorable conditions available
            """, imgUrls: [
              "$assets/bacteria_a1.png",
            ])
          ]),
    );

    ////
    ///[CHERRY] fruits daya added
    ///
    availableCrops.add(Crop(
      id: "2",
      imgUrl: "$assets/cheryy1.png",
      name: "Cherry",
      color: Colors.red.withOpacity(1), //Color(0XFFFFC61E),
    ));

    availableCrops.add(
      Crop(
          id: "3",
          imgUrl: "$assets/citrus.jpg",
          name: "Citrus",
          color: Colors.orange.withOpacity(0.8)),
    );
    availableCrops.add(
      Crop(
          id: "4",
          imgUrl: "$assets/mango.jpg",
          name: "Mangoes",
          color: Color(0XFFFFC800) //Colors.yellow.withOpacity(1)
          ),
    );
    availableCrops.add(
      Crop(
          id: "5",
          imgUrl: "$assets/plumb.jpg",
          name: "Plum",
          color: Colors.red.withOpacity(1)),
    );

    availableCrops.add(
      Crop(
          id: "6",
          imgUrl: "$assets/guvava.jpg",
          name: "Guvava",
          color: Colors.green.withOpacity(1)),
    );
    availableCrops.add(
      Crop(
          id: "7",
          imgUrl: "$assets/grapes.png",
          name: "Grapes",
          color: Colors.green.withOpacity(1)),
    );
    availableCrops.add(
      Crop(
          id: "8",
          imgUrl: "$assets/strawberry01.png",
          name: "Strawberry",
          color: Colors.red.withOpacity(1)),
    );
  }
}
