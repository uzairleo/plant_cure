
// ///
// ///This is a [home-Dashboard] screen which have bunch of options and also the first screen of root-screen
// ///

// class HomeDashboardScreen extends StatefulWidget {
//   @override
//   _HomeDashboardScreenState createState() => _HomeDashboardScreenState();
// }

// class _HomeDashboardScreenState extends State<HomeDashboardScreen> {
//   ///variables initialization
//   final _authDataService = locator<AuthDataService>();
//   final _locationService = locator<LocationService>();
//   final _geocodingApiService = locator<GeocodingApiService>();
//   double height;
//   double width;
//   var articleFilters;
//   final advertViewController1 = PageController(viewportFraction: 0.8);
//   final advertViewControlle2 = PageController(viewportFraction: 0.8);
//   double currentIndexPage = 0.0;

//   @override
//   Widget build(BuildContext context) {
//     //constants
//     height = MediaQuery.of(context).size.height;
//     width = MediaQuery.of(context).size.width;
//     //build return statement
//     return ChangeNotifierProvider(
//       create: (context) => HomeViewModal(),
//       child: Consumer<HomeViewModal>(
//         builder: (context, modal, child) => ModalProgressHUD(
//           inAsyncCall: modal.homeState == ViewState.loading,
//           child: SafeArea(
//             child: Scaffold(
//               backgroundColor: backgroundColor2,

//               ///
//               ///The [body] of home screen starts from here
//               ///
//               body: SingleChildScrollView(
//                 physics: BouncingScrollPhysics(),
//                 child: Column(
//                   // crossAxisAlignment: CrossAxisAlignment.stretch,
//                   children: <Widget>[
//                     Padding(
//                       padding: const EdgeInsets.only(
//                           left: 15.0, right: 15.0, top: 12),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.stretch,
//                         children: <Widget>[
//                           ///
//                           ///This is a custom appBar having notification bar & cart button
//                           ///
//                           homeAppBar(),

//                           ///
//                           ///This is a location tag by selecting this user will navigate to location screen
//                           ///
//                           locationTag(),

//                           ///
//                           ///This is a custom searchBar using which user can search items
//                           ///
//                           SizedBox(
//                             height: 12.0,
//                           ),
//                           searchBar(),
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       height: 22.0,
//                     ),

//                     ///
//                     ///A custom widget having advertisement about the items
//                     ///
//                     adverstisementView(),

//                     ///
//                     ///This widget will show a pageview indicator
//                     ///
//                     SizedBox(
//                       height: 15.0,
//                     ),
//                     pageViewIndicator(),

//                     Padding(
//                       padding: const EdgeInsets.only(
//                         left: 12.0,
//                         right: 12.0,
//                         top: 20.0,
//                       ),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.stretch,
//                         children: <Widget>[
//                           ///
//                           ///This widget is used for categories title or header
//                           ///

//                           categoryTitle("Medicines"),

//                           SizedBox(
//                             height: 15.0,
//                           ),

//                           ///
//                           ///A widget having all medicine categories
//                           ///

//                           medicineCategories(modal),

//                           ///
//                           ///This widget is used for categories title or header
//                           ///

//                           categoryTitle("Pharmacies"),

//                           SizedBox(
//                             height: 15.0,
//                           ),

//                           ///
//                           ///A widget having all pharmacy categories
//                           ///
//                           // TODO : Turn on your location to find
//                           // near by pharmacies <add a check her if location null show this Text other wise the gridview builder >
//                           Padding(
//                             padding: EdgeInsets.only(bottom: 20),
//                             child: pharmacyCategories(modal),
//                           )
//                         ],
//                       ),
//                     ),

//                     ///
//                     ///Advertisement banner widget
//                     ///
//                     advertisementBanner(),

//                     ///
//                     ///Services list tile
//                     ///
//                     servicesList(),

//                     ///
//                     ///This widget have a promo container which contain the page view for promotion purpose
//                     ///
//                     promoContainer(),
//                     SizedBox(
//                       height: 20.0,
//                     ),

//                     ///
//                     ///This widget have all article
//                     ///
//                     articleExplorer(modal),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   categoryTitle(title) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.start,
//       children: <Widget>[
//         Padding(
//           padding: const EdgeInsets.only(left: 8.0),
//           child: Text(
//             title,
//             style: subHeadingTextStyle.copyWith(
//                 fontSize: 14, fontWeight: FontWeight.w600),
//           ),
//         ),
//       ],
//     );
//   }

//   homeAppBar() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceBetween,
//       children: <Widget>[
//         //user name
//         RichText(
//             text: TextSpan(children: [
//           TextSpan(
//               text: "Hi, ",
//               style: subHeadingTextStyle.copyWith(
//                   fontSize: 17.0, fontWeight: FontWeight.w600)),
//           TextSpan(
//               text: _authDataService.patientProfile != null
//                   ? "${_authDataService.patientProfile?.userName ?? "  . . ."}"
//                   : "  . . .",
//               style: subHeadingTextStyle.copyWith(
//                   fontSize: 17.0, fontWeight: FontWeight.w600))
//         ])),
//         //cart button
//         Row(
//           mainAxisAlignment: MainAxisAlignment.spaceBetween,
//           children: <Widget>[
//             // Container(),
//             IconButton(
//                 icon: ImageContainer(
//                   assetImage: "assets/static_assets/cart.png",
//                   height: 20,
//                   width: 20,
//                 ),
//                 onPressed: () {
//                   print("cart pressed");
//                   Navigator.pushNamed(context, 'cart-screen');
//                 }),
//             //notification bar
//             IconButton(
//                 icon: ImageContainer(
//                   assetImage: "assets/static_assets/notification.png",
//                   height: 20,
//                   width: 20,
//                 ),
//                 onPressed: () {
//                   print("notification pressed");
//                   Navigator.pushNamed(context, "notification-Screen");
//                 }),
//           ],
//         ),
//       ],
//     );
//   }

//   locationTag() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.start,
//       children: <Widget>[
//         ImageContainer(
//           assetImage: "assets/static_assets/marker.png",
//           width: 16,
//           height: 16,
//         ),
//         SizedBox(width: 10),
//         Text(
//           _geocodingApiService.geocodingApi.status == "OK"
//               ? "${_geocodingApiService.getCity()}, ${_geocodingApiService.getCountry()}"
//               : "",
//           style: subBodyTextStyle.copyWith(
//               fontSize: 14, fontWeight: FontWeight.w500),
//         ),
//       ],
//     );
//   }

//   searchBar() {
//     return Container(
//       height: 50,
//       decoration: BoxDecoration(
//           color: Colors.white,
//           borderRadius: BorderRadius.circular(24.0),
//           boxShadow: [
//             BoxShadow(
//                 color: Colors.black12,
//                 blurRadius: 0.6,
//                 spreadRadius: 0.9,
//                 offset: Offset(0, 1.4))
//           ]),
//       child: TextFormField(
//         // controller: controller,
//         // validator: (value) {
//         //   if (value.isEmpty) {
//         //     return errorMsg;
//         //   } else {
//         //     return null;
//         //   }
//         // },
//         // onSaved: onsaved,
//         // obscureText: obscureText,
//         keyboardType: TextInputType.text,
//         decoration: InputDecoration(
//           suffixIcon: Icon(Icons.search),
//           hintText: "Search medicine, pharmacy, etc.",
//           contentPadding: EdgeInsets.only(
//             top: 15.0,
//             left: 12.0,
//           ),
//           hintStyle: subHeadingTextStyle.copyWith(
//             fontSize: 13,
//             color: greyColor,
//           ),
//           border: InputBorder.none,
//         ),
//       ),
//     );
//   }

//   adverstisementView() {
//     return Container(
//       height: 112,
//       color: backgroundColor2,
//       child: PageView.builder(
//         itemCount: 3,
//         physics: BouncingScrollPhysics(),
//         itemBuilder: (context, index) {
//           //will make this below a separate widget
//           return Padding(
//             padding: EdgeInsets.only(left: 15, right: 15),
//             child: Container(
//               decoration: BoxDecoration(
//                   color: blueThemeColor,
//                   borderRadius: BorderRadius.circular(15.0),
//                   image: DecorationImage(
//                       image: AssetImage("assets/static_assets/banner1.png"),
//                       fit: BoxFit.fill)),
//             ),
//           );
//         },

//         //calling on pageChanged function to get index
//         onPageChanged: (int index) {
//           print(index);
//           setState(() {
//             currentIndexPage = index.toDouble();
//           });
//         },
//       ),
//     );
//   }

//   pageViewIndicator() {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.center,
//       crossAxisAlignment: CrossAxisAlignment.end,
//       children: <Widget>[
//         AnimatedContainer(
//           duration: Duration(milliseconds: 800),
//           child: DotsIndicator(
//             dotsCount: 3,
//             position: currentIndexPage.toDouble(),
//             decorator: DotsDecorator(
//               size: const Size.square(9.0),
//               activeSize: const Size(18.0, 9.0),
//               activeShape: RoundedRectangleBorder(
//                   borderRadius: BorderRadius.circular(5.0)),
//             ),
//           ),
//         )
//       ],
//     );
//   }

//   medicineCategories(HomeViewModal modal) {
//     return Container(
//       // height: 250,
//       child: GridView.builder(
//           itemCount: modal.medicineTags.length + 1,
//           padding: EdgeInsets.only(bottom: 30),
//           primary: false,
//           shrinkWrap: true,
//           gridDelegate:
//               SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
//           itemBuilder: (context, index) {
//             return (index < modal.medicineTags.length)
//                 ? MedicineItemWidget2(tag: modal.medicineTags[index])
//                 : MedicineItemWidget2(
//                     tag: MedicineTag(
//                       name: "Others",
//                       image: 'assets/static_assets/others.png',
//                     ),
//                   );
//           }),
//     );
//   }

//   pharmacyCategories(HomeViewModal modal) {
//     return _locationService.patientAddress.isNull ||
//             _locationService.patientPosition.isNull ||
//             _locationService.permission == LocationPermission.denied
//         // ||
//         // _locationService.serviceEnabled == false
//         ? Container(
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 Text(
//                   "Please turn on your location to find nearby pharmacies.",
//                   textAlign: TextAlign.center,
//                 ),
//                 SizedBox(
//                   height: 16.0,
//                 ),
//                 Container(
//                   child: RoundedBlueButton(
//                     text: "Allow your location",
//                     onPressed: () async {
//                       await modal.checkLocationPermissions();
//                     },
//                   ),
//                 ),
//               ],
//             ),
//           )
//         : Container(
//             // height: 134,
//             child: GridView.builder(
//                 itemCount: modal.pharmacies.length + 1,
//                 shrinkWrap: true,
//                 primary: false,
//                 gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//                     crossAxisCount: 3),
//                 itemBuilder: (context, index) {
//                   return (index < modal.pharmacies.length)
//                       ? PharmacyItemWidget(
//                           pharmacy: modal.pharmacies[index],
//                         )
//                       : PharmacyItemWidget(
//                           pharmacy: Pharmacy(
//                             pharmacyName: "Others",
//                           ),
//                         );
//                 }),
//           );
//   }

//   advertisementBanner() {
//     return Container(
//       height: 97,
//       color: Colors.white,
//       child: Padding(
//         padding: const EdgeInsets.only(left: 14.0, right: 14.0),
//         child: Container(
//           height: 57,
//           decoration: BoxDecoration(
//             borderRadius: BorderRadius.circular(7.0),
//             image: DecorationImage(
//                 image: AssetImage("assets/static_assets/banner2.png")),
//           ),
//         ),
//       ),
//     );
//   }

//   servicesList() {
//     return Padding(
//       padding: const EdgeInsets.only(top: 20, left: 13.0, right: 13),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.stretch,
//         children: <Widget>[
//           ServiceListTile(
//               title: "Talk with profetionals",
//               discription:
//                   "Talk with doctor & specialist,\navailable 24 hours!",
//               imageUrl: "assets/static_assets/profesional.png",
//               ontap: () {
//                 Get.to(SpecializationsScreen());
//               }),
//           ServiceListTile(
//               title: "Refills now",
//               discription: "Upload your prescription \nif you have it",
//               imageUrl: "assets/static_assets/tablets.png",
//               ontap: () {
//                 Navigator.push(
//                     context,
//                     MaterialPageRoute(
//                         builder: (_) => PrescriptionFormScreen()));
//               }),
//           ServiceListTile(
//               title: "Activity",
//               discription: "See your purchase and \nconsultation activity",
//               imageUrl: "assets/static_assets/activity.png",
//               ontap: () {
//                 Navigator.push(context,
//                     MaterialPageRoute(builder: (_) => ActivityHomeScreen()));
//               }),
//           SizedBox(
//             height: 8.0,
//           ),
//         ],
//       ),
//     );
//   }

//   promoContainer() {
//     return Container(
//       height: 230,
//       color: Colors.white,
//       child: Padding(
//         padding: const EdgeInsets.only(top: 10.0, left: 15.0, right: 15.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.stretch,
//           children: <Widget>[
//             Row(
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: <Widget>[
//                 Text("Promo",
//                     style: subHeadingTextStyle.copyWith(fontSize: 14)),
//               ],
//             ),
//             Container(
//               height: 176,
//               // color: Colors.yellow,
//               child: Stack(
//                 children: <Widget>[
//                   //pageViewBuilder container
//                   Container(
//                     child: PageView.builder(
//                         controller: advertViewControlle2,
//                         physics: BouncingScrollPhysics(),
//                         itemCount: 3,
//                         itemBuilder: (context, index) {
//                           return ImageContainer(
//                             height: 178,
//                             assetImage: "assets/static_assets/promo.png",
//                           );
//                         }),
//                   ),
//                   //left and write ButtonsRow
//                   Padding(
//                     padding: const EdgeInsets.only(top: 72.0),
//                     child: Row(
//                       children: <Widget>[
//                         IconButton(
//                             icon: Image.asset(
//                                 "assets/static_assets/backward.png"),
//                             onPressed: () {
//                               print("backward pressed");
//                               //navigating to previous page by calling this functin
//                               advertViewControlle2.previousPage(
//                                   duration: Duration(milliseconds: 600),
//                                   curve: Curves.easeInOut);
//                             }),
//                         Spacer(),
//                         IconButton(
//                             icon:
//                                 Image.asset("assets/static_assets/forward.png"),
//                             onPressed: () {
//                               print("forward pressed");
//                               //navigating to next page by calling this functin
//                               advertViewControlle2.nextPage(
//                                   duration: Duration(milliseconds: 600),
//                                   curve: Curves.easeIn);
//                             }),
//                       ],
//                     ),
//                   )
//                 ],
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }

//   articleExplorer(HomeViewModal modal) {
//     return Container(
//       // height: 682,
//       color: Colors.white,
//       child: Padding(
//         padding: const EdgeInsets.only(left: 11.0, right: 4, top: 14),
//         child: Column(
//           children: <Widget>[
//             ///Do you know header
//             Row(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.start,
//               children: <Widget>[
//                 Text(
//                   "Do you know?",
//                   style: subHeadingTextStyle.copyWith(
//                       fontSize: 14, fontWeight: FontWeight.w600),
//                 )
//               ],
//             ),
//             //filterRow()
//             SizedBox(height: 18),

//             /// all article filters for best ux
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: <Widget>[
//                 // articleFilter(
//                 //     title: "All",
//                 //     color: (articleFilters == ArticleFilter.all)
//                 //         ? Colors.blue
//                 //         : Colors.black,
//                 //     ontap: () async{
//                 //       setState(() {
//                 //         articleFilters = ArticleFilter.all;
//                 //       });
//                 //       await modal.getAllArticles();
//                 //     }),

//                 ///
//                 ///dynamic article filters starting from here
//                 ///
//                 Row(
//                   children: List.generate(
//                     modal.articleTags.length,
//                     (index) => articleFilter(
//                         title: "${modal.articleTags[index].name}",
//                         color: (modal.articleTags[index].isSelected)
//                             ? Colors.blue
//                             : Colors.black,
//                         ontap: () async {
//                           //toggle the button
//                           modal.toggleArticleTag(index);
//                           if (modal.articleTags[index].name == "All" ||
//                               modal.articleTags[index].name == "all") {
//                             // get all article in case if all is selected
//                             modal.getAllArticles();
//                           } else {
//                             //and now get all the drticle by tags
//                             await modal.getAllArticleByTags(
//                                 modal.articleTags[index].id);
//                           }
//                         }),
//                   ),
//                 )
//                 // articleFilter(
//                 //     title: "Sex Life",
//                 //     color: (articleFilters == ArticleFilter.sexLife)
//                 //         ? blueThemeColor
//                 //         : Colors.black,
//                 //     ontap: () {
//                 //       setState(() {
//                 //         articleFilters = ArticleFilter.sexLife;
//                 //       });
//                 //     }),
//                 // articleFilter(
//                 //     title: "Food",
//                 //     color: (articleFilters == ArticleFilter.food)
//                 //         ? blueThemeColor
//                 //         : Colors.black,
//                 //     ontap: () {
//                 //       setState(() {
//                 //         articleFilters = ArticleFilter.food;
//                 //       });
//                 //     }),
//                 // articleFilter(
//                 //     title: "Habit",
//                 //     color: (articleFilters == ArticleFilter.habit)
//                 //         ? blueThemeColor
//                 //         : Colors.black,
//                 //     ontap: () {
//                 //       setState(() {
//                 //         articleFilters = ArticleFilter.habit;
//                 //       });
//                 //     }),
//                 // articleFilter(
//                 //     title: "Diet",
//                 //     color: (articleFilters == ArticleFilter.diet)
//                 //         ? blueThemeColor
//                 //         : Colors.black,
//                 //     ontap: () {
//                 //       setState(() {
//                 //         articleFilters = ArticleFilter.diet;
//                 //       });
//                 //     }),
//                 // Container(),
//               ],
//             ),
//             SizedBox(height: 15),
//             //article tile listview
//             Container(
//               height: 400,
//               child: (modal.articles.isEmpty ||
//                       modal.articles.isNullOrBlank ||
//                       modal.articles.length < 1)
//                   ? Padding(
//                       padding: EdgeInsets.fromLTRB(20, 50, 20, 20),
//                       child: Text("No article found"),
//                     )
//                   : ListView.builder(
//                       shrinkWrap: true,
//                       itemCount: modal.articles.length,
//                       physics: BouncingScrollPhysics(),
//                       itemBuilder: (context, index) {
//                         if (modal.articles.length - index == 1) {
//                           print("ARTICLES LENGTH==> ${modal.articles.length}");
//                           // index % 9 == 0) {
//                           return Column(
//                             children: [
//                               // (
//                               // modal.articles.isEmpty ||
//                               //       modal.articles.isNullOrBlank ||
//                               //     modal.articles.length < 1)
//                               // ?
//                               ArticleTileWidget(
//                                 article: modal.articles[index],
//                               ),
//                               // : Container(),
//                               SizedBox(
//                                 height: 10.0,
//                               ),
//                               (index < 9)
//                                   ? Container()
//                                   : RoundedBlueButton(
//                                       text: "Load More",
//                                       onPressed: () async {
//                                         try {
//                                           print("Load more button pressed");
//                                           int articlePageNumber = 2;
//                                           for (int i = 10;
//                                               i < modal.articles.length;
//                                               i = i + 9) {
//                                             if (i % index == 0) {
//                                               articlePageNumber++;
//                                               print(
//                                                   "ARTICLE PAGE NUMBER===> $articlePageNumber");
//                                               await modal.getNextPageArticles(
//                                                   articlePageNumber);
//                                               modal.loadNext = false;
//                                             }
//                                           }
//                                           if (modal.loadNext) {
//                                             await modal.getNextPageArticles(
//                                                 articlePageNumber);
//                                           }
//                                         } catch (e) {
//                                           print(
//                                               "Exception load more articled /Pagination=> $e");
//                                         }
//                                       })
//                             ],
//                           );
//                         } else {
//                           return ArticleTileWidget(
//                             article: modal.articles[index],
//                           );
//                         }
//                       }),
//             ),
//             SizedBox(
//               height: 10.0,
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   articleFilter({title, ontap, color}) {
//     return Padding(
//       padding: const EdgeInsets.only(right: 12.0),
//       child: Card(
//         elevation: 0.0,
//         child: InkWell(
//           onTap: ontap,
//           child: Container(
//             height: 18,
//             child: Text(
//               title,
//               style: buttonTextStyle2.copyWith(
//                   fontSize: 13, fontWeight: FontWeight.w500, color: color),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
