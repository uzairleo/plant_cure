import 'package:farmer_assistant_app/core/constants/static-assets.dart';
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
                imgUrls: ["$appricot/ShotHole1.png"]),

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
                imgUrls: ["$appricot/Brownrot1.png"]),

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
                imgUrls: ["$appricot/PowderyMildew2.png"]),

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
                  "$appricot/Gummosis2.png",
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
                  "$appricot/Gall1.png",
                ]),

            ///Disease no 7
            Disease(name: "Water Stress", treatments: """
          •	Give water when needed
            """, symptoms: """
          no symptoms available
           """, favorableConditions: """
          no favorable conditions available
            """, imgUrls: [
              "$appricot/waterstress3.png",
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
        color: Color(0XFFDE3163), //Color(0XFFFFC61E),
        commonDiseases: [
          ///Disease no 1
          Disease(
              name: "Bacterial Gummosis",
              treatments: """
Bacterial Gummosis	Apply curative spray on the appearance of disease.
•	Kocide @ 250g/100L of water OR 
•	Cobox @ 250g/100L of water OR 
•	Champion 500-1000g/100L of water OR
•	Champion 300-350g/ 200L of water
            """,
              symptoms:
                  "Heavy gumming is associated with bacterial canker formation on branches and twigs in bacterial gummosis. Gumming occurs at the edges of the cankers. Yellowing and browning of cherry leaves, which develop holes similar to a shot-hole appearance, are common symptoms. Early summer leaves may drop, and fruit may deform or mature later than usual. This disease spreads much more slowly in sweet cherries than in sour cherries.",
              favorableConditions:
                  "The bacteria causing gummosis on cherry tree is Pseudomonas syringae pv. Morspanorum. The bacteria is ice-nucleation-active, which serves as nuclei for the formation of ice. Disease development is most prevalent during the cool, wet periods of early spring.",
              imgUrls: [
                "$Cherry/Gall1.png",
              ]),

          ///Disease no 2
          Disease(
              name: "Leaf Spot/Shot Hole",
              treatments: """
i.	Apply Bordeaux mixture especially in winter season 
ii.	 Apply winter sprays as preventive sprays /         Copper based fungicides
iii.	Apply curative sprays on the appearance of disease,
•	Success (Chlorothalonil) @ 330g/200L of water 
            """,
              symptoms:
                  " Leaf spot in Cherry plants is one of the most serious diseases of both sweet and sour cherries. The Cherry leaf spot starts out as purple spots on the upper surface of older leaves in early summer. The spots grow across and turn reddish-brown. Several spots may grow together into larger dead patches. These yellow patches form around the leaf spots",
              favorableConditions:
                  "Cherry leaf spot is caused by the fungus, Blumeriella jaapii (previously called Coccomyces hiemalis). Whereas, Bacterial leaf spot diseases are most commonly caused by Pseudomonas spp. or Xanthomonas spp.  In early spring about petal fall, fungal fruiting bodies called apothecia develop in these leaves. ",
              imgUrls: [
                "$Cherry/Shothole1.png",
              ]),

          ///Disease no 3
          Disease(
              name: "Powdery Mildew",
              treatments: """
•	Spray systhane @ 1ml /lit of water  on the appearance of symptoms
•	Repeat it after seven days
            """,
              symptoms:
                  "Powdery mildew appears on leaves as patches of white, powdery or felt-like fungal growth. Severely affected leaves and shoots are often distorted. Chasmothecia is a fungal fruiting body that appear in older mildew colonies as small and black specks. The first sign of powdery mildew is pale yellow leaf spots. White powdery spots can form on both upper and lower leaf surfaces, and quickly expand into large blotches. When powdery mildew infects the majority of the foliage, the plant weakens and the fruit ripens prematurely.",
              favorableConditions:
                  "Powdery mildew of sweet and sour cherry is caused by Podosphaera clandestine. Mid and late season, sweet cherry (Prunus avium) cultivars are commonly affected. Rendering the ready fruit is unmarketable due to the covering of white fungal growth on the cherry surface.",
              imgUrls: [
                "$Cherry/PowderyMildew2.png",
              ]),

          ///Disease no 5
          Disease(
              name: "Crown Gall",
              treatments: """
Dip roots stone fruit nursery plant in solution of “No gall” for at least 5 minutes prior to plantation
""",
              symptoms:
                  " Galls with a rough, ugly appearance that are soft and spongy form on the roots or trunk. Young cherry trees become stunted in the early stages, whereas older trees frequently develop secondary wood rots. A roundish rough-surfaced gall, similar to tumer growth, develops in several centimetres or diameter near the soil line. It can also grow on a graft site or bud union, as well as on roots and lower stems. The galls begin cream-colored or greenish and eventually turn brown or black.",
              favorableConditions:
                  "Crown gall is caused by the bacterial plant pathogen, Agrobacterium tumefaciens. Moreover, another cause Rhizobium radiobacter which lives for several years in soil. ",
              imgUrls: [
                "$Cherry/Gall1.png",
              ]),
        ]));

    ///
    ///CITRUS FRUITS ADDING
    ///
//     availableCrops.add(
//       Crop(
//           id: "3",
//           imgUrl: "$assets/citrus.jpg",
//           name: "Citrus",
//           color: Colors.orange.withOpacity(0.8),
//           commonDiseases: [
//             ///Disease no 1
//             Disease(
//                 name: "Shot hole",
//                 treatments: """
// i.	Apply Bordeaux mixture especially in winter season
// ii.	Apply winter sprays as preventive sprays / Copper based fungicides
// iii.Apply curative sprays on the appearance of disease,
//  •	Success (Chlorothalonil) @ 330g/200L of water
//             """,
//                 symptoms:
//                     "Small red or brown spots, usually 0.25 inch in diameter and with purple edges, first appear on leaves, buds, and fruits. The infection causes holes in the leaves as a result of dried lesions dropping out, causing the leaf shape to be disrupted. The lesions have brown midpoint lumps that cause buds to turn brown/black. This shot hole also spreads to Shoot. Furthermore, the fruit infections start as purple-red spots and can cause the fruit to drop or defoliate if the infection is severe",
//                 favorableConditions:
//                     " Thyrostroma Carpophilum, (formerly Wilsonomyces Carpophilus), is a type of fungus that infects usually apricot buds and twigs. The fungus is most common on apricot where the fungal spores spreads in rainy weather by spreading spores from infected tissue to leaves and fruit by splashed and wind-blown rain from spring to falls season. The spores usually require four hours of moisture to germinate and also, sometimes spread rapidly within a tree. Lesions develop very slowly in cold such as 7 °C or below and can grow fast in optimal temperatures such as 20 to 27 °C.  The disease can be controlled by using fungicides.",
//                 imgUrls: [
//                   "$assets/bacteria_a1.png",
//                 ]),

//             ///Disease no 2
//             Disease(
//                 name: "Brown Rot: ",
//                 treatments: """
// Apply curative spray on the appearance of disease.
// •	Top guard @ 200ml/100L of water
// •	Nanok @ 100ml/ 200L
//             """,
//                 symptoms:
//                     "Brown rot is a type of fungus that grows by digesting cellulose and leaving lignin behind, causing brown spots on apricots. The disease attacks blossoms and spreads to branches, killing the stems. During their development, the fruits became infected.",
//                 favorableConditions:
//                     "Brown rot is a caused by a fungus called Monilinia fructicola, which usually spreads during rainy season via wind, rain and insects. It spreads in high humid environments with temperature below 20 oC. Pesticides can be used to keep the disease under control.",
//                 imgUrls: [
//                   "$assets/bacteria_a1.png",
//                 ]),

//             ///Disease no 3
//             Disease(
//                 name: "Powdery Mildew",
//                 treatments: """
// Apply curative spray on the appearance of disease.
// •	Systhane @ 2ml /L of water
//             """,
//                 symptoms:
//                     "Powdery Mildew is characterized by round, chalky white lesions in patches caused by fungus growth on various parts of the apricot tree, including the leaves and fruits. Powdery mildew can cause scabs and red or purple splotches on apricot trees. When the patches mature, they turn brown and spread across the entire fruit, cracking it and causing the leaves to curl upward and eventually drop.",
//                 favorableConditions:
//                     "Apricot trees are frequently infected with powdery mildew (dry weather disease) caused by Sphaerotheca pannosa, which is one of two species of powdery mildew that infect apricot fruit and leaves in the spring. It grows at temperatures ranging from 18 to 27°C in high humidity, such as at night, to allow for spore germination. Winter cold, on the other hand, can kill them. Powdery mildew can be controlled with fungicides applied during bloom and fruit development. Fungicides used to treat Brown rot are also effective against powdery mildew.",
//                 imgUrls: [
//                   "$assets/bacteria_a1.png",
//                 ]),

//             ///Disease no 5
//             Disease(
//                 name: "Gummosis",
//                 treatments: """
// Apply curative spray on the appearance of disease,
// •	Kocide @ 250g/100L of water OR
// •	Cobox @ 250g/100L of water OR
// •	Champion 500-1000g/100L of water OR
// •	Champion 300-350g/ 200L of water
//             """,
//                 symptoms:
//                     "Gummosis (Eutypa die back / Foot rot) is the formation of gummy patches on the surface of an apricot tree. It is distinguished by the gum or sap that oozes from a wound in the tree's bark. This happens when sap oozes from wounds or cankers in response to external stimuli such as bad weather, infections, insect problems, or mechanical damage. It causes entire branches to die with their leaves still attached in the late spring.",
//                 favorableConditions:
//                     "Fungal gummosis usually happens due to Botryosphaeria dothidea, when the tree has a perennial or bacterial canker and zoospores splash onto a wound or bark crack around the trunk's base. Heavy and continuous rains are ideal for the growth of gummosis, especially during fruit growth and ripening. It can be avoided by painting all pruning wounds with an organic or chemical fungicide during hot and dry weather.",
//                 imgUrls: [
//                   "$assets/bacteria_a1.png",
//                 ]),

//             ///Disease no 6
//             Disease(
//                 name: "Crown Gall",
//                 treatments: """
// •	Dip roots stone fruit nursery plant in solution of “No gall” for at least 5 minutes prior to plantation.
// •	No chemical control is available.
// •	Plant only resistant varieties/ disease free plants
//            """,
//                 symptoms:
//                     "It can become a host for any plant pathogen that causes tumors or galls. It appears in the early stages as tumor swellings that are spherical, white/flesh colored, rough, spongy, and wart-like. The disease causes galls on the roots, crowns, trunks, and canes, which usually interfere with water and nutrient flow in the plants, causing them to weaken, stun, and become unproductive.",
//                 favorableConditions:
//                     "The bacterium Agrobacterium Tumefacines is usually responsible for the Crown Gall. The best time to visit is in the spring or early summer. If the disease is severe, the plant will suffer and produce dry, underdeveloped fruit.",
//                 imgUrls: [
//                   "$assets/bacteria_a1.png",
//                 ]),

//             ///Disease no 7
//             Disease(name: "Water Stress", treatments: """
//           •	Give water when needed
//             """, symptoms: """
//           no symptoms available
//            """, favorableConditions: """
//           no favorable conditions available
//             """, imgUrls: [
//               "$assets/bacteria_a1.png",
//             ])
//           ]),
//     );

//     ///
//     ///MANGO FRUIT ADDED
//     ///
//     availableCrops.add(
//       Crop(
//           id: "4",
//           imgUrl: "$assets/mango.jpg",
//           name: "Mangoes",
//           color: Color(0XFFFFC800) //Colors.yellow.withOpacity(1)
//           ,
//           commonDiseases: [
//             ///Disease no 1
//             Disease(
//                 name: "Powdery Mildew",
//                 treatments: """
// i.	Apply Bordeaux mixture especially in winter season
// ii.	Apply winter sprays as preventive sprays / Copper based fungicides
// iii.Apply curative sprays on the appearance of disease,
//  •	Success (Chlorothalonil) @ 330g/200L of water
//             """,
//                 symptoms:
//                     "Small red or brown spots, usually 0.25 inch in diameter and with purple edges, first appear on leaves, buds, and fruits. The infection causes holes in the leaves as a result of dried lesions dropping out, causing the leaf shape to be disrupted. The lesions have brown midpoint lumps that cause buds to turn brown/black. This shot hole also spreads to Shoot. Furthermore, the fruit infections start as purple-red spots and can cause the fruit to drop or defoliate if the infection is severe",
//                 favorableConditions:
//                     " Thyrostroma Carpophilum, (formerly Wilsonomyces Carpophilus), is a type of fungus that infects usually apricot buds and twigs. The fungus is most common on apricot where the fungal spores spreads in rainy weather by spreading spores from infected tissue to leaves and fruit by splashed and wind-blown rain from spring to falls season. The spores usually require four hours of moisture to germinate and also, sometimes spread rapidly within a tree. Lesions develop very slowly in cold such as 7 °C or below and can grow fast in optimal temperatures such as 20 to 27 °C.  The disease can be controlled by using fungicides.",
//                 imgUrls: [
//                   "$assets/bacteria_a1.png",
//                 ]),

//             ///Disease no 2
//             Disease(
//                 name: "Brown Rot: ",
//                 treatments: """
// Apply curative spray on the appearance of disease.
// •	Top guard @ 200ml/100L of water
// •	Nanok @ 100ml/ 200L
//             """,
//                 symptoms:
//                     "Brown rot is a type of fungus that grows by digesting cellulose and leaving lignin behind, causing brown spots on apricots. The disease attacks blossoms and spreads to branches, killing the stems. During their development, the fruits became infected.",
//                 favorableConditions:
//                     "Brown rot is a caused by a fungus called Monilinia fructicola, which usually spreads during rainy season via wind, rain and insects. It spreads in high humid environments with temperature below 20 oC. Pesticides can be used to keep the disease under control.",
//                 imgUrls: [
//                   "$assets/bacteria_a1.png",
//                 ]),

//             ///Disease no 3
//             Disease(
//                 name: "Powdery Mildew",
//                 treatments: """
// Apply curative spray on the appearance of disease.
// •	Systhane @ 2ml /L of water
//             """,
//                 symptoms:
//                     "Powdery Mildew is characterized by round, chalky white lesions in patches caused by fungus growth on various parts of the apricot tree, including the leaves and fruits. Powdery mildew can cause scabs and red or purple splotches on apricot trees. When the patches mature, they turn brown and spread across the entire fruit, cracking it and causing the leaves to curl upward and eventually drop.",
//                 favorableConditions:
//                     "Apricot trees are frequently infected with powdery mildew (dry weather disease) caused by Sphaerotheca pannosa, which is one of two species of powdery mildew that infect apricot fruit and leaves in the spring. It grows at temperatures ranging from 18 to 27°C in high humidity, such as at night, to allow for spore germination. Winter cold, on the other hand, can kill them. Powdery mildew can be controlled with fungicides applied during bloom and fruit development. Fungicides used to treat Brown rot are also effective against powdery mildew.",
//                 imgUrls: [
//                   "$assets/bacteria_a1.png",
//                 ]),

//             ///Disease no 5
//             Disease(
//                 name: "Gummosis",
//                 treatments: """
// Apply curative spray on the appearance of disease,
// •	Kocide @ 250g/100L of water OR
// •	Cobox @ 250g/100L of water OR
// •	Champion 500-1000g/100L of water OR
// •	Champion 300-350g/ 200L of water
//             """,
//                 symptoms:
//                     "Gummosis (Eutypa die back / Foot rot) is the formation of gummy patches on the surface of an apricot tree. It is distinguished by the gum or sap that oozes from a wound in the tree's bark. This happens when sap oozes from wounds or cankers in response to external stimuli such as bad weather, infections, insect problems, or mechanical damage. It causes entire branches to die with their leaves still attached in the late spring.",
//                 favorableConditions:
//                     "Fungal gummosis usually happens due to Botryosphaeria dothidea, when the tree has a perennial or bacterial canker and zoospores splash onto a wound or bark crack around the trunk's base. Heavy and continuous rains are ideal for the growth of gummosis, especially during fruit growth and ripening. It can be avoided by painting all pruning wounds with an organic or chemical fungicide during hot and dry weather.",
//                 imgUrls: [
//                   "$assets/bacteria_a1.png",
//                 ]),

//             ///Disease no 6
//             Disease(
//                 name: "Crown Gall",
//                 treatments: """
// •	Dip roots stone fruit nursery plant in solution of “No gall” for at least 5 minutes prior to plantation.
// •	No chemical control is available.
// •	Plant only resistant varieties/ disease free plants
//            """,
//                 symptoms:
//                     "It can become a host for any plant pathogen that causes tumors or galls. It appears in the early stages as tumor swellings that are spherical, white/flesh colored, rough, spongy, and wart-like. The disease causes galls on the roots, crowns, trunks, and canes, which usually interfere with water and nutrient flow in the plants, causing them to weaken, stun, and become unproductive.",
//                 favorableConditions:
//                     "The bacterium Agrobacterium Tumefacines is usually responsible for the Crown Gall. The best time to visit is in the spring or early summer. If the disease is severe, the plant will suffer and produce dry, underdeveloped fruit.",
//                 imgUrls: [
//                   "$assets/bacteria_a1.png",
//                 ]),

//             ///Disease no 7
//             Disease(name: "Water Stress", treatments: """
//           •	Give water when needed
//             """, symptoms: """
//           no symptoms available
//            """, favorableConditions: """
//           no favorable conditions available
//             """, imgUrls: [
//               "$assets/bacteria_a1.png",
//             ])
//           ]),
//     );

    ///
    ///PLUM FRUIT ADDED
    ///
    availableCrops.add(
      Crop(
          id: "5",
          imgUrl: "$assets/plumb.jpg",
          name: "Plum",
          color: Color(0XFFC2938D),
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
                    "Small reddish or purplish-brown spots are surrounded by a light green or yellow ring at the start of the signs. As the condition worsens, the damaged areas grow marginally larger, then dry up and fall away. As the fungus spreads, it damages more leaf tissues, causing the leaf to fall off. Significant infections can weaken the plant and reduce fruit production by reducing the amount of photosynthesis",
                favorableConditions:
                    " Wilsonomyces carpophilus is the causative agent of the disease. The spores are dispersed in the spring as moisture levels rise or as a result of overhead watering. Infection can occur whenever moisture is present for at least 24 hours and temperatures are above 2 °C. Infection spreads faster at higher temperatures. At 25 °C, infection takes only 6 hours.",
                imgUrls: [
                  "$Plum/ShotHole3.png",
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
                    " A brown wilted blossoms where flowers may ooze a brown sticky sap. A visible twig blight or cankers on fruit producing branches with dark sunken rotting spots on fruit grow very quickly are observed. Moreover, visible fuzzy tan-gray spores on fruit with shrivelling or mummified appearance of fruit can be seen.,",
                favorableConditions:
                    "Wet, humid weather plays a factor in the growth and spread of Monilinia fructicola. Humidity and temperatures between 18 to 25 ºC provide the disease with the perfect growing conditions. In spring, spores of the disease are released from last year’s mummified fruits or cankers and carried in the wind. When these spores land on any wet surface of a stone fruit tree, it can infect the whole tree within 5 hours. Young fruits are more resistant but become more susceptible as they mature. Brown rot of plum trees can totally rot and mummify a fruit in just two days.",
                imgUrls: [
                  "$Plum/BrownRot1.png",
                ]),

            ///Disease no 3
            Disease(
                name: "Powdery Mildew",
                treatments: """
Apply curative spray on the appearance of disease.
•	Systhane @ 2ml /L of water 
            """,
                symptoms:
                    "The upper and lower sides of the leaf, flowers, and fruits are infected with white powdery spreading fungus patches. Rose powdery mildew can cause tissue stunting or distortion, which can lead to leaf damage. Powdery mildew appears as pale yellow leaf spots on both upper and lower leaf surfaces, which quickly expand into large blotches. When powdery mildew atta",
                favorableConditions:
                    "In dry days, a fungus called Podosphaera Tridactyla spreads the disease. It spreads via spores at the end of the summer or the beginning of September. The bottom side of the leaf develops an incomplete lignified sprout crust, black dots, and fungus formation.",
                imgUrls: [
                  "$Plum/PowderyMildew2.png",
                ]),

            ///Disease no 5
            Disease(
                name: "Gummosis",
                treatments: """
Apply curative spray on the appearance of disease.
•	Kocide @ 250g/100L of water OR 
•	Cobox @ 250g/100L of water OR 
•	Champion 500-1000g/100L of water OR
•	Champion 300-350g/ 200L of water
            """,
                symptoms:
                    "Gummosis is most commonly spread by a fungus called Cytospora, which has since been renamed Leucostoma. This fungus is opportunistic, infecting weak trees. It exhibits symptoms such as canopy dieback and tree flagging, resulting in a large amount of dark amber gum. ",
                favorableConditions:
                    "Gummosis is caused by the fungus Phytophthora, which grows in moist environments. The fungi produce a large number of motile zoospores, which are splashed onto the trunks of the trees. The Phytophthora species that causes gummosis grows quickly in moist and cool conditions, but it slows down in hot summer weather.",
                imgUrls: [
                  "$Plum/Gummosis2.png",
                ]),

            ///Disease no 6
            Disease(
                name: "Nutrient Deficiency ",
                treatments: """
•	Plant helper @ 3ml/L of water  OR 
•	Crop current @ 3g/l of water OR 
•	Yes @ 3 g/l of water 
           """,
                symptoms: "Not available",
                favorableConditions: "Not available",
                imgUrls: [
                  "$Plum/Nutrient2.png",
                ]),

            ///Disease no 7
            Disease(
                name: "Crown gall",
                treatments: """
•	Dip roots stone fruit nursery plant in solution of “No gall” for at least 5 minutes prior to plantation.""",
                symptoms:
                    "Round and rough-surfaced galls one to ten inches or one foot in diameter grow. It looks like a woody tumor and can grow small or large, usually near the soil line, on a graft site or bud union, or on roots and lower stems. The galls are cream-colored or greenish at first, then turn brown or black. Older galls become hard and dry, with many rough cracks and fissures.",
                favorableConditions:
                    "A bacterial plant pathogen called Agrobacterium Tumefaciens cause crown gall. The bacteria enter plant roots through wounds which is created during planting, grafting, soil insect feeding, root damage from excavation or other forms of physical damage. Crown gall infection easily spreads by movement of infested soil. The disease grows between 22 to 30 ºC in atmospheric humidity of 80%.",
                imgUrls: [
                  "$Plum/Gall3.png",
                ])
          ]),
    );

    ///
    ///GUVAVA FRUIT ADDED
    ///
    availableCrops.add(
      Crop(
          id: "6",
          imgUrl: "$assets/guvava.jpg",
          name: "Guava",
          color: Colors.green.withOpacity(1),
          commonDiseases: [
            ///Disease no 1
            Disease(
                name: "Guava Wilt",
                treatments: """
•	The disease can be controlled through proper sanitation. 
•	Through solarization of the soil. Burnt wilted plants and uprooted. 
•	Treat guava plant with 0.1% water soluble 8 quinolinol sulphate. It may provide protection to the plant for at least 1 year against wilt. 
•	Harsh pruning followed by a drench with 0.2% Bavistine or Benlate 4time in a year.
            """,
                symptoms:
                    "Small red or brown spots, usually 0.25 inch in diameter and with purple edges, first appear on leaves, buds, and fruits. The infection causes holes in the leaves as a result of dried lesions dropping out, causing the leaf shape to be disrupted. The lesions have brown midpoint lumps that cause buds to turn brown/black. This shot hole also spreads to Shoot. Furthermore, the fruit infections start as purple-red spots and can cause the fruit to drop or defoliate if the infection is severe",
                favorableConditions:
                    " Thyrostroma Carpophilum, (formerly Wilsonomyces Carpophilus), is a type of fungus that infects usually apricot buds and twigs. The fungus is most common on apricot where the fungal spores spreads in rainy weather by spreading spores from infected tissue to leaves and fruit by splashed and wind-blown rain from spring to falls season. The spores usually require four hours of moisture to germinate and also, sometimes spread rapidly within a tree. Lesions develop very slowly in cold such as 7 °C or below and can grow fast in optimal temperatures such as 20 to 27 °C.  The disease can be controlled by using fungicides.",
                imgUrls: [
                  "$Guava/Wilt2.png",
                ]),

            ///Disease no 2
            Disease(
                name: "Fruit Rot",
                treatments: """
•	Kothari (1968) recommended weekly spray of Bordeaux mixture and copper oxychloride.
•	Management of dry rot through the use of fungicides like Ziride 0.3%.
•	Seed treatment with Bavistin 3g/kg seed controls the disease effectively.
            """,
                symptoms:
                    "Fruit rot is a type of fungus that grows by digesting cellulose and leaving lignin behind, causing brown spots on apricots. The disease attacks blossoms and spreads to branches, killing the stems. During their development, the fruits became infected.",
                favorableConditions:
                    "Fruit rot is a caused by a fungus called Monilinia fructicola, which usually spreads during rainy season via wind, rain and insects. It spreads in high humid environments with temperature below 20 oC. Pesticides can be used to keep the disease under control.",
                imgUrls: [
                  "$Guava/Rot1.png",
                ]),

            ///Disease no 3
            Disease(
                name: "Fruit canker",
                treatments: """
•	Spread disease can be controlled by 3 or 4 spray of 1%of Bordeaux mixture or lime sulphate at 15days interval.
•	Naisk and cultives Sind show good resistance against this disease.
•	Safeda and apple color verities are highly resistant against this disease.
•	The homoeopathic drugs, potassium iodide and arsenic oxide completely inhibited spore germination.it can also inhibit the growth of pathogen.
            """,
                symptoms:
                    "A minute, brown or rust-colored, unbroken, circular, necrotic area appears on green guava fruits and rarely on leaves. Normally, the pathogen does not affect the leaves, however the fruits develop small, brown or rusty, circular, and unbroken necrotic tissues. A large deposit of mycelium containing many spores is seen as the canker becomes more visible. In severe cases of infection, the fruits may break open, exposing the seeds that have perforated the fruit pulp. Affected fruits are stunted and stony, and they eventually detach from the parent plant and fall to the ground. ",
                favorableConditions:
                    "Phytophthora nicotianae causes fruit rot, and Pestalotiopsis psidii causes guava fruit canker. Both are common in a disease that causes rotting of nearly ripe fruits from June to the end of October.",
                imgUrls: [
                  "$Guava/Canker2.png",
                ]),

            ///Disease no 6
            Disease(
                name: "Dot",
                treatments: """
•	Score 30 ml/100 L of water OR 
•	Topsin – M @3g/l of water of Shincar 3g/l of water
           """,
                symptoms: "Not available",
                favorableConditions: "Not available",
                imgUrls: [
                  "$Guava/Dot3.png",
                ]),

            ///Disease no 7
            Disease(
                name: "Dieback and Anthracnose (Fruit rot)",
                treatments: """
•	Spray copper oxychloride 50%WP @ 4gm/lit.
            """,
                symptoms:
                    "The fungus attacks developing shoots and expanding leaves, resulting in poor guava growth and yield by causing lesions and dark spots on flowers, fruits, leaves, and stems. The disease is easily spreadable and has the potential to wipe out an entire guava plantation. It usually feeds on infected leaves, flowers, stems, fruits, or debris. The first sign of infection is tiny pustules on new growth, which erupt after a few days and produce yellow spores. The infection spreads, and pustules eventually merge.",
                favorableConditions:
                    " A fungus namely Colletotrichum gloeosporioides is responsible for the anthracnose and the fruit rot diseases of guava fruit. The fungus spreads quickly in rainy season.",
                imgUrls: [
                  "$Guava/Rot1.png",
                ]),

            ///Disease no 7
            Disease(
                name: "Rust",
                treatments: """
•	Tilt @ 2-3 ml /l of water 
•	Repeat  the spray after seven days 
            """,
                symptoms: "Not available",
                favorableConditions: "Not available",
                imgUrls: [
                  "$Guava/Rust3.png",
                ])
          ]),
    );

    ///
    ///GRAPES FRUIT ADDED
    ///
    availableCrops.add(
      Crop(
          id: "7",
          imgUrl: "$assets/grapes.png",
          name: "Grapes",
          color: Colors.green.withOpacity(1),
          commonDiseases: [
            ///Disease no 1
            Disease(
                name: "Downy Mildew",
                treatments: """
•	Spray Redomil Gold or Feast-M or thinker  @ 3g/lit of water  on the appearance of symptoms 
•	Repeat it after seven days
            """,
                symptoms:
                    "Downy mildew appears as oil spots on the surface of the leaves, canes, and bunches. On the upper surface of the leaves, pale green to yellow spots appear, which later turn brown. Leaf spots are angular in shape and are bounded by leaf veins. In high humidity, a dark purplish grey fuzz forms on the underside of the leaf.",
                favorableConditions:
                    "Downy mildew is caused by the fungus Plasmopara viticola. The fungus overwinters in infected leaves on the ground and possibly in diseased shoots. In periods of high humidity and conditions, the disease develops rapidly. It is an extremely serious fungal disease of grapes that can result in severe crop loss. ",
                imgUrls: [
                  "$Grapes/DownyMildew2.png",
                ]),

            ///Disease no 2
            Disease(
                name: "Powdery Mildew",
                treatments: """
•	Spray systhane @ 1ml /lit of water  on the appearance of symptoms
•	Repeat it after seven days
            """,
                symptoms:
                    "Affected berries may have patches of fungal growth on the surface, similar to the leaves. Powdery mildew is easily identified by white, powdery growth on plant leaves, shoots, and stems. The white and powdery growth covers the entire berry stock. The surface of infected berries has rusty spots. The pathogen appears on fruit and rachises as white, powdery masses that can colonize the entire berry surface. On mature fruit, black to brown web scarring can be seen, with red blotchy areas on dormant canes.",
                favorableConditions:
                    "Powdery mildew is persistent fungal problem of grapes which is caused by the fungal pathogen Erysiphe necator.  It is ash-grey to white powdery growth on green tissue of the vine. Unlike many common fungal diseases that thrive in cool, wet weather, powdery mildew flourishes when it's warm and dry.",
                imgUrls: [
                  "$Grapes/PowderyMildew4.png",
                ]),

            ///Disease no 3
            Disease(
                name: "Anthracnose",
                treatments: """
•	Spray Topsin-M @ 3g/lit of water  on the appearance of symptoms 
•	Repeat it after seven days
            """,
                symptoms:
                    "The symptoms on the leaves and stems of grapevines may be the first signs of anthracnose. The disease looks like hail damage, with necrotic, irregular spots and darkened haloes. Infected areas crack and cause brittle vines. Young leaves develop tan to brown irregular shaped spots or blotches. Infected leaves are frequently twisted, cupped, or curled. In the spring, a severe infection can cause leaf drop.",
                favorableConditions:
                    "Anthracnose of grapes is caused by the fungus Elsinoe ampelina. It is a serious disease of home-grown grapes which is also commonly called bird's eye rot. The disease is most destructive in warm and wet seasons.",
                imgUrls: [
                  "$Grapes/Anthracnose1.png",
                ]),

            ///Disease no 5
            Disease(
                name: "Esca (Black Measels)",
                treatments: """
Sanitation measure 
•	Spray cu based fungicide after pruning
•	Topsin – M  @ 3g/l OR 
•	Systhane @  1-2ml/ l of water
            """,
                symptoms: "Not available",
                favorableConditions: "Not available",
                imgUrls: [
                  "$Grapes/Esca3.png",
                ]),

            ///Disease no 6
            Disease(
                name: "Leaf Spot/Blight",
                treatments: """
•	X- spore @ 3ml /l of water           """,
                symptoms:
                    "The disease attacks both the leaves and the fruits, causing small yellowish spots along the leaf margins to appear at first. These spots grow in size over time, eventually transforming into brownish patches with concentric rings. Leaf drying and defoliation are symptoms of a severe infection. Leaf spots develop from small brown spots with a yellow halo to irregular brown spots up to 3/4 in diameter.",
                favorableConditions:
                    "Alternaria leaf blight is caused by the fungus Alternaria cucumerina. The conditions are conductive in the month of June, November and December. ",
                imgUrls: [
                  "$Grapes/LeafBlight1.png",
                ]),
          ]),
    );
////
    ///STRAWBERYY FRUIT ADDED
    ///
    availableCrops.add(
      Crop(
          id: "8",
          imgUrl: "$assets/strawberry01.png",
          name: "Strawberry",
          color: Colors.red.withOpacity(1),
          commonDiseases: [
            ///Disease no 1
            Disease(
                name: "Leaf Scorch",
                treatments: """
•	Cabriotop @ 4g/lit of water on the appearance of symptoms 
•	Repeat it after seven days
            """,
                symptoms:
                    "Scorched strawberry leaves are caused by a fungal infection that primarily affects the foliage of strawberry plants. Strawberries with leaf scorch may first exhibit symptoms such as the appearance of small purplish blemishes on the topside of the leaves. Numerous small, irregular, purplish spots or \"blotches\" form on the upper surface of leaves. The blotches' centers turn brownish, and they may coalesce until they nearly cover the leaflet, which then appears purplish to reddish to brown",
                favorableConditions:
                    "The fungus responsible is called Diplocarpon earliana. Leaf blight disease is caused by the fungus Helminthosporium turcicum. The disease appears on sorghum leaves, particularly in humid conditions, as reddish-purple or tan spots that coalesce to form large lesions. It attacks seedlings and older plants.",
                imgUrls: [
                  "$Strawberry/LeafScorch1.png",
                ]),

            ///Disease no 2
            Disease(
                name: "Leaf spots",
                treatments: """
•	Spray Topsin-M @ 3g/lit of water  on the appearance of symptoms 
•	Repeat it after seven days
            """,
                symptoms:
                    "Leaf spot symptoms begin as circular, deep purple spots on the upper leaf surface. On older leaves, these spots enlarge and the centers turn grayish to white, while on younger leaves, they turn light brown.",
                favorableConditions:
                    "Leaf spot is caused by the fungus, Mycosphaerella fragariae. The disease enter a garden on infected strawberry plants or via windblown spores from nearby strawberries. Once introduced into a garden, the fungus is spread predominantly by splashing water from rain or sprinklers used for watering. ",
                imgUrls: [
                  "$Strawberry/LeafSpot1.png",
                ]),

            ///Disease no 3
            Disease(
                name: "Grey Mold",
                treatments: """
•	Cabriotop @ 4g/lit of water on the appearance of symptoms 
•	Repeat it after seven days
            """,
                symptoms:
                    "Once the infection initiated, the rotted area becomes firm and turns a darker brown color. Fruits soon \"mummify\" and the blossoms become covered with a gray, dusty powder which are the spores of the fungus. A light gray or brownish lesion will develop near the stem end of the fruit. Lesions are found on green fruit as well as ripening fruit.",
                favorableConditions:
                    "Botrytis cinerea (Ascomycota) infects strawberries and causes grey mould, which is visible on the surface as grey fluffy mycelium. The fungus begins to grow and produce spores when the conditions are favorable in late winter or early spring. Wind and wind-blown rain can disperse the spores across the planting. The pathogen grows best in cool, humid environments (18°C-24°C).",
                imgUrls: [
                  "$Strawberry/GreyMold1.png",
                ]),

            ///Disease no 5
            Disease(
                name: "Powdery mildew",
                treatments: """
•	Spray systhane @ 1ml /lit of water  on the appearance of symptoms 
•	Repeat it after seven days
            """,
                symptoms:
                    "A characteristic curling of leaves is followed by appearance of a white powdery coating on the underside. Purple-reddish blotches appear on the upper and lower surface of leaves. Infected flowers produce deformed fruit or no fruit at all. The first sign of powdery mildew is pale yellow leaf spots. White powdery spots can form on both upper and lower leaf surfaces, and quickly expand into large blotches",
                favorableConditions:
                    "Strawberry powdery mildew, caused by the fungus Podosphaera aphanis attacks the leaves, flowers and fruit of strawberry. It is an obligate, biotrophic fungus that causes damage to strawberry leaves, flowers, and fruit. ",
                imgUrls: [
                  "$Strawberry/PowdeyMildew1.png",
                ]),

            ///Disease no 6
            Disease(
                name: "Alternaria Spot",
                treatments: """
•	Spray Champian  @ 3g /lit of water  on the appearance of symptoms 
•	Repeat it after seven days
           """,
                symptoms:
                    "Lesions, also known as \"spots,\" appear on the upper leaf surfaces in circular or irregular shapes. These lesions frequently have distinct reddish-purple to rusty-brown borders that encircle a necrotic area. The size and appearance of lesions are frequently influenced by the host species and the ambient temperature. Yellow, dark brown to black circular leaf spots with target-like, concentric rings are the most common symptom of Alternaria diseases. The centers of the lesion may fall out, giving the leaf spots a shot-hole appearance.",
                favorableConditions:
                    "The fungus Alternaria cucumerina causes Alternaria leaf blight. Alternaria is an important fungus to study because of its diverse life cycle, ranging from saprophytes to endophytes, and because it is a very successful fungal pathogen that causes diseases in a variety of economically important crops.",
                imgUrls: [
                  "$Strawberry/Alternariaspot2.png",
                ]),

            ///Disease no 7
            Disease(
                name: "Black root rot",
                treatments: """
•	Spray Aliette or Trident @ 3g /lit of water  on the appearance of symptoms 
•	Repeat it after seven days
            """,
                symptoms:
                    "Black Root Rot (BRR) is a strawberry disease that one or more organisms are involved in the infection. Symptoms of black root rot are same as other root rots diseases. The symptoms may include yellowing of the plant, defoliation, stunting or wilting, as well as red brown lenticels and swelling of the crown. A gradual build up in the soil of disease cause microorganisms and nematodes when strawberries are grown with inadequate rotation. ",
                favorableConditions:
                    "Several pathogens contributes in fungi Pythium spp., Fusarium spp., Rhizoctonia spp., and several other species of nematodes. Black root rot is usually caused by the fungus Thielaviopsis basicola. This pathogen can persist indefinitely in soils or survive on plant debris as a saprobe",
                imgUrls: [
                  "$Strawberry/Root1.png",
                ]),

            ///Disease no 8
            Disease(
                name: "Anthracnose (black spot)",
                treatments: """
•	Spray Topsin-M @ 3g/lit of water  on the appearance of symptoms 
•	Repeat it after seven days 
            """,
                symptoms:
                    "The strawberry fruit caught small light colored or water-soaked lesions that grow progressively larger and darker on maturity. Black spots in salmon-color appear in the lesions after a few days. Tan to brown irregular shaped spots or blotches on young leaves appear where the infected leaves are often distorted, cupped or curled.",
                favorableConditions:
                    "Anthracnose fruit rot is most destructive disease caused by Colletotrichum acutatum. Strawberry is affected by several pathogens can infect all parts of the plant and cause severe damage or death.",
                imgUrls: [
                  "$Strawberry/redstele3.png",
                ])
          ]),
    );
  }
}
