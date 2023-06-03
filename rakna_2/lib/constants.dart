import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:maligali/size_config.dart';

const orangePrimaryColor = Color(0xffff5900);
const orangeSecondaryColor = Color(0xfff4801e);
const purpleContainerColor = Color(0xFF350455);
//const purpleSubContainerColor = Color(0xFF502D5C);

const redLightButtonDarkBG = Color(0xFFE94F5A);
const redLightButtonsLightBG = Color(0xFFFE4E5B);
const lightGreyButtons = Color(0xFFE9E9E8);
const lightGreyButtons2 = Color(0xFFC7C7C6);

const darkGreen = Color(0xFF395A64);
const darkBeige = Color(0xFFE7DFC6);
const lightGreyReceiptBG = Color(0xFF8c8c8c);
const darkRed = Color(0xFFFE202F);
const lightBlue = Color(0xFF5800FF);
const darkBlue = Color(0xFF061C57);
const grayBG = Color(0xFFF2F2F2);

const redTextAlert = Color(0xFFFF0707);
const white2BG = Color(0xFFFEFEFF);
const textBlack = Color(0xFF000000);
const textWhite = Color(0xFFFFFFFF);
const textBabyPurple = Color(0xFFDD9BF7);
const textYellow = Color(0xFFFFEA2B);
const newYellow = Color(0xFFFDD023);
const textGreen = Color(0xFF14FF00);

Color welcomeGradient1 = const Color(0xFF1F0329).withOpacity(0.91); //91%
var welcomeGradient2 = const Color(0xFF2C073A).withOpacity(0.91); //91%
const welcomeGradient3 = Color(0xFF74308B); //100%
const welcomeGradient4 = Color(0xFF854D98); //100%

LinearGradient welcomeGradient = LinearGradient(
    colors: [
      welcomeGradient1,
      welcomeGradient2,
      welcomeGradient3,
      welcomeGradient4
    ],
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    stops: const [0.20, 0.5, 0.95, 1]);

const authGradient1 = Color(0xffff5900);
var authGradient2 = const Color(0xFFFEFDFF).withOpacity(0.9);
const authGradient3 = Color(0xfff1974d);


LinearGradient authGradient = const LinearGradient(
    colors: [authGradient1, authGradient3],
    begin: Alignment.topLeft,
    end: Alignment.bottomRight);

// Fonts Used --------------------------------------------------------------------------
// var arFont = GoogleFonts.changa;
// var enFont = GoogleFonts.lexendDeca;
// var compFont = GoogleFonts.novaSlim;

// Titles and MainButtons
const mainFontSize = 25.0;
const FontWeight mainFontWeight = FontWeight.bold;

// subTitles and subButtons
const subFontSize = 21.0;
const FontWeight subFontWeight = FontWeight.bold;

// Common writing text
const commonTextSize = 18.0;
const FontWeight commonTextWeight =
    FontWeight.w700; // or regular font (no weights used)

// Tiny text (sub texts)
const tinyTextSize = 15.0;
const FontWeight tinyTextWeight =
    FontWeight.w700; // or regular font (no weights used)

// Special cases - extra large text
const extraLargeTextSize = 30.0; // only used as regular font (no weights)

// Paddings Used -------------------------------------------------------------------------
const emptyScreensPadding = 30.0;
const emptyScreenSecondaryPadding = 25.0;
const regularPadding = 15.0;
const separationPadding = 12.0;

// Button Sizes Used ---------------------------------------------------------------------
const mainButtonsSize = 60.0;
const commonButtonSize = 50.0;
const mediumButtonSize = 45.0;
const tinyButtonsSize = 30.0;

// // Errors and Alerts ----------------------------------------------------------------------
// const String kPhoneNullError = "دخل رقم تليفون صحيح";
// const String kInvalidPhoneNumberError = "رقم التليفون غلط";
// const String kPhoneNotFoundError = "الرقم مش موجود سجل بياناتك الاول";
// const String kInvalidOTPCodeError = "الكود غير صحيح";
// const String kOTPCodeNullError = "دخل الكود من الرسالة";
// const String kUserNameNullError = "دخل اسم مستخدم صحيح";
// const String kShopNameNullError = "دخل اسم محل صحيح";
// const String kAddressNullError = "دخل عنوان محلك";
// const String kShopSizeNullError = "اختار حجم محلك";
// const String kNameNullError = "ارفع ملفات بيانات المحل القديمة";
//
// OutlineInputBorder outlineInputBorderDark() {
//   return OutlineInputBorder(
//     borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
//     borderSide: const BorderSide(color: purplePrimaryColor),
//   );
// }
//
// OutlineInputBorder outlineInputBorderLight() {
//   return OutlineInputBorder(
//     borderRadius: BorderRadius.circular(getProportionateScreenWidth(15)),
//     borderSide: const BorderSide(color: white2BG),
//   );
// }
