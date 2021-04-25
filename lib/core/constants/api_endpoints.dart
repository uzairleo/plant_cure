class EndPoint {
  static String baseUrl = "https://ponasasa.com/";
  static String geocodingBaseUrl =
      "https://maps.googleapis.com/maps/api/geocode/json?";
  static String test = '/test/';
  static String verifyToken = 'api/token/verify/';
  static String refreshToken = 'api/token/refresh/';
  static String apiotp = "api/v1/otp/";
  static String medicineTag = 'api/v1/medicine_tags/';
  static String getpharmacies = 'api/v1/pharmacies/';
  static String getArticles = 'api/v1/articles/';
  static String getArticleTags = 'api/v1/article_tags/';
  static String getArticleByTags = 'api/v1/articles/?tag_id=';
  static String getMedicineByTag = 'api/v1/medicine/?tag_id=';
  static String getPharReviews =
      'api/v1/pharmacy_review/?rating=doctor&pharmacy_id=';
  static String addPharmacyReview = 'api/v1/pharmacy_review/';
  static String getFaqs = 'api/v1/faqs/?tag_id=';
  static String getTags = 'api/v1/faq_tags/';
  static String apiRegister = 'api/v1/register/';
  static String apiLogin = 'api/v1/login/';
  static String apiUpdateUser = 'api/v1/user/';
  static String getPharProducts = 'api/v1/pharmacy_products/';
  static String addImage = 'api/v1/images/';
  static String docSpecialization = 'api/v1/specialization/';
  static String doctorsBySpecialization = 'api/v1/users/?specialization_id=';
  static String mockBaseUrl =
      "https://5fa14efa2541640016b6ad54.mockapi.io/ponasasaDummy/api/v1/";

  static String doctorTags = '/doctorTags';
  static String updateUserVitals = 'api/v1/user_vitals/';
  static String getPharProductsById = 'api/v1/pharmacy_products/?pharmacy_id=';
  static String getProfileBody = 'api/v1/user/';
  static String getSingleDependantProfile = 'api/v1/dependants/';
  static String updateProfileBody = 'api/v1/user/';
  static String addDependant = 'api/v1/dependants/';
  static String getCartItems = 'api/v1/cart/';
  static String addCartItems = 'api/v1/cart/';
  static String checkoutCart = 'api/v1/process_order_check_out/';
  static String deleteCartItem = 'api/v1/cart/';
  static String userVitals = 'api/v1/user_vitals/';
  static String healthInfo = 'api/v1/user_health_information/';
  static String addUserVitals = 'api/v1/user_vitals/';
  static String updateDependantProfile = 'api/v1/dependants/';
  static String payConsultaiton = 'api/v1/pay_consultation/';
  static String updateHealthInfo = 'api/v1/user_health_information/';
  static String createConsultation = 'api/v1/consultations/';
  static String createConsultationReview = 'api/v1/consultation_review/';
  static String doctorById = 'api/v1/users/?id=';
  static String updateArticleView = 'api/v1/article_view_count/';
  static String updateArticleLikes = 'api/v1/article_like_count/';
  static String doRefill = 'api/v1/refills/';
}
